//
//  ContentView.swift
//  Landmarks
//
//  Created by Александр Андреев on 22.06.2020.
//  Copyright © 2020 Александр Андреев. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("Califonia")
                    .font(.subheadline)
            }
        }
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
