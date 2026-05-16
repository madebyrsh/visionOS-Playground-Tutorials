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
        
        WindowGroup(id: "creatureWindow", for: String.self) { $modelName in} // 이부분의 코드를 하나도 모르겠다 어떤 의미인지
    }
}
