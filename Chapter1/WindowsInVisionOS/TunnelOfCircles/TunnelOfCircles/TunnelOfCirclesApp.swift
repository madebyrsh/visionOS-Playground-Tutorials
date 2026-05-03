//
//  TunnelOfCirclesApp.swift
//  TunnelOfCircles
//
//  Created by Shayne Ryu on 5/1/26.
//

import SwiftUI

@main
struct TunnelOfCirclesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowResizability(.contentSize) // Window를 줄여도 항상 컨텐츠 사이즈를 맞춤
    }
}
