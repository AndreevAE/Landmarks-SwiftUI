//
//  LandmarkList.swift
//  MacLandmarks
//
//  Created by Александр Андреев on 06.07.2020.
//  Copyright © 2020 Александр Андреев. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject private var userData: UserData
    @Binding var selectedLandmark: Landmark?
    var body: some View {
        List(selection: $selectedLandmark) {
            ForEach(userData.landmarks) { landmark in
                if (!self.userData.showFavoritesOnly || landmark.isFavorite) {
                    LandmarkRow(landmark: landmark).tag(landmark)
                }
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList(selectedLandmark: .constant(landmarkData[0]))
            .environmentObject(UserData())
    }
}
