//
//  WatchMapView.swift
//  WatchLandmarks Extension
//
//  Created by Александр Андреев on 22.06.2020.
//  Copyright © 2020 Александр Андреев. All rights reserved.
//

import SwiftUI

struct WatchMapView: WKInterfaceObjectRepresentable {
    var landmark: Landmark

    func makeWKInterfaceObject(
        context: WKInterfaceObjectRepresentableContext<WatchMapView>
    ) -> WKInterfaceMap {
        return WKInterfaceMap()
    }

    func updateWKInterfaceObject(
        _ map: WKInterfaceMap,
        context: WKInterfaceObjectRepresentableContext<WatchMapView>
    ) {
        let span = MKCoordinateSpan(
            latitudeDelta: 0.02,
            longitudeDelta: 0.02
        )

        let region = MKCoordinateRegion(
            center: landmark.locationCoordinate,
            span: span
        )

        map.setRegion(region)
    }
}

struct WatchMapView_Previews: PreviewProvider {
    static var previews: some View {
        WatchMapView(landmark: UserData().landmarks[0])
    }
}
