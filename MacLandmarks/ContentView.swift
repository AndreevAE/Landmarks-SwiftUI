//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Александр Андреев on 06.07.2020.
//  Copyright © 2020 Александр Андреев. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedLandmark: Landmark?

    var body: some View {
        NavigationView {
            NavigationPrimary(selectedLandmark: $selectedLandmark)

            if selectedLandmark != nil {
                NavigationDetail(landmark: selectedLandmark!)
            }
        }
        .frame(minWidth: 700, minHeight: 300)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
