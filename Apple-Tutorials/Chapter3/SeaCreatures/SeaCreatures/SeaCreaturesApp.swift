//
//  SeaCreaturesApp.swift
//  SeaCreatures
//
//  Created by Shayne Ryu on 5/16/26.
//

import SwiftUI

@main
struct SeaCreaturesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowResizability(.contentSize)
        .defaultSize(width: 0.75, height: 0.5, depth: 0.5, in: .meters)
        
        WindowGroup(id: "creatureWindow", for: String.self) { $modelName in // 이부분의 코드를 하나도 모르겠다 어떤 의미인지
            SeaCreatureDetailView(modelName: modelName ?? "ToyBiplane") // 이부분도 이해가 하나도 안된다. modelName: modelName 은 무엇이고 ?? 는 또 무엇이며 왜 갑자기 ToyBiplane을 호출하는지도 모르겠다.
                .padding3D(.all, 250)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.5, height: 0.5, depth: 0.5, in: .meters)
    }
}
