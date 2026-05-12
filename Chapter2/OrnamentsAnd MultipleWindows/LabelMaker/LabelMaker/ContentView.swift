//
//  ContentView.swift
//  LabelMaker
//
//  Created by Shayne Ryu on 5/12/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openWindow) private var openWindow // OpenWindowAction 애 액세스 하기 위함
    @State private var label = Label()
    
    var body: some View {
        
        LabelView(label: $label)
            .padding()
            .ornament(attachmentAnchor: .scene(.bottom)) { // ornament란? attachAnchor이란 .scene(.bottom)이란 그리고 scene의 기준점은?
                HStack(spacing: 30) {
                    Slider(value: $label.cornerRadius, in: 0...100)
                        .frame(width: 100)
                    Button("Create") {
                        openWindow(value: label)
                        label = Label()
                    }
                }
                .padding()
                .glassBackgroundEffect()
            }
        
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
