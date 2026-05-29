//
//  SeaCreatureDetailView.swift
//  SeaCreatures
//
//  Created by Shayne Ryu on 5/16/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SeaCreatureDetailView: View {
    
    let modelName: String // 이 상수를 생성하자마자 #Preview에 Missing argument 에러가 뜨는 이유는?
    
    @State private var horizontalRotation = CGFloat.zero // CGFloat.zero의 zero는 왜있으며 왜 디폴트 수치를 안넣고 CGFloat라고 하였는가?
    @State private var verticalRotation = CGFloat.zero
    
    @State private var endHorizontalRotation = CGFloat.zero
    
    @State private var endVerticalRotation = CGFloat.zero
    
    var body: some View {
        Model3D(named: modelName, bundle: realityKitContentBundle)
            .rotation3DEffect(
                .degrees(horizontalRotation), axis: .y //왜 가로로 돌아가는게 y인가? x,y면 x가 가로 아닌가?
            )
            .rotation3DEffect(
                .degrees(verticalRotation), axis: .x
            )
            .gesture(
                DragGesture()
                    .onChanged({ value in //.onChanged는 무엇인가? 그리고 왜 value in 인가 또한 왜 () 안에 {}를 넣을수 있는가?
                        horizontalRotation = value.translation.width + endHorizontalRotation //여기서 translation.width는 무엇인가
                        verticalRotation = value.translation.height + endVerticalRotation // 왜 + endVerticalRotation인가
                        
                    })
                    .onEnded ({ _ in // 왜 _를 사용했는가
                        endHorizontalRotation = horizontalRotation
                        endVerticalRotation = verticalRotation // 왜 여기서 endVerticalRotation은 value.translation.height같은 형태라 아니라 그냥 verticalRotation 인가?
                    })
                
                
            )
        
    }
}

#Preview {
    SeaCreatureDetailView(modelName: "SlugScene")
}
