//
//  ContentView.swift
//  SeaCreatures
//
//  Created by Shayne Ryu on 5/16/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    private var seaCreatures = [
        SeaCreature(name: "Clam", modelName: "ClamScene"),
        SeaCreature(name: "Fish", modelName: "FishScene"),
        SeaCreature(name: "Slug", modelName: "SlugScene"),
        SeaCreature(name: "Starfish", modelName: "StarfishScene")
    ]
    
    var body: some View {
        VStack {
            Model3D(named: "ClamScene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
