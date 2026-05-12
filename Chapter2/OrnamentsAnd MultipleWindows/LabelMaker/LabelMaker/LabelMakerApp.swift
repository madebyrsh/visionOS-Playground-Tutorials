//
//  LabelMakerApp.swift
//  LabelMaker
//
//  Created by Shayne Ryu on 5/12/26.
//

import SwiftUI

@main
struct LabelMakerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    
        
        WindowGroup(for: Label.self) { $label in
            LabelView(label: $label)
        } defaultValue: {
            Label(text: "", cornerRadius: 20)
        }
        .windowStyle(.plain)
    }
}
