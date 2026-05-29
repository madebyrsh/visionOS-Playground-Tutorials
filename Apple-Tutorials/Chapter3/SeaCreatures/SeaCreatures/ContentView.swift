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
    
    @Environment(\.openWindow) private var openWindow // @Environment는 항상 @State나 @Binding보다 윗줄에 써야하는가? 그리고 이건 새창을 열때 항상 필요한가?
    @State private var selectedCreature: SeaCreature? //왜 '?'가 붙는가?
    
    
    
    
    private var seaCreatures = [
        SeaCreature(name: "Clam", modelName: "ClamScene"),
        SeaCreature(name: "Fish", modelName: "FishScene"),
        SeaCreature(name: "Slug", modelName: "SlugScene"),
        SeaCreature(name: "Starfish", modelName: "StarfishScene")
    ]
    
    var body: some View {
        NavigationSplitView {
            List(seaCreatures) { creature in // 여기서 creature in 은 왜?
                Button(action: { // Button () 안에 action:, label을 다 함께 넣는 이유는?
                    selectedCreature = creature
                }, label: {
                    Text(creature.name)
                })
            }
            .navigationTitle("Sea Creatures")
        } detail: {
            if let selectedCreature { // if let은 if와 무엇이 다르며 여기서는 왜 if let 인가?
                Model3D(named: selectedCreature.modelName, bundle: realityKitContentBundle)
                    .navigationTitle(selectedCreature.name) // 여기서 어떻게 버튼을 누를때마다 각 3d모델이 어떻게 인식하고 다 나오는가?
                    .toolbar { // toolbar는 무엇인가 여기서 왜 toolbar를 사용하나?
                        Button(action: {
                            openWindow(id: "creatureWindow", value: selectedCreature.modelName)
                        }, label: {
                            Text("View \(selectedCreature.name)") // 여기서 왜 "View 다음에 \로 (selectedCreature.name)"이 나오는가?
                        })
                    }
            } else {
                Text("Select a sea creature")
            }
        }
        .frame(minWidth: 700, minHeight: 700)
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
//챕터3 튜토리얼 완료
