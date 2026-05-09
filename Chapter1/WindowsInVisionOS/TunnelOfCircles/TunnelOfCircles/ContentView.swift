//
//  ContentView.swift
//  TunnelOfCircles
//
//  Created by Shayne Ryu on 5/1/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    // colors 속성 @State
    @State private var colors: [Color] = [.cyan, .blue, .black] // colors @State 기존 2색상에서 1색상 프로퍼티 추가
    // Circle 깊이 속성 @State
    @State private var depth: Double = 0.0
    
    
    // Circle의 사이즈
    let minDiameter = 10.0 // 첫번째 원의 크기
    let diameterChange = 80.0 // 추가 원들의 크기
    
    var body: some View {
        VStack(spacing : 40) { // .padding을 제거하고 스페이싱 간격 정의
            
            Text("Tunnel of Circles")
                .font(.largeTitle)
                .padding() // 제목 패딩
            
            ZStack {
                ForEach (0..<6) { index in // 원의 개수 증가 4 > 6
                    Circle()
                        .stroke(lineWidth: 30)
                        .foregroundStyle(colors[index % 2])
                        .frame(height: minDiameter + diameterChange * Double(index))
                        .padding3D(.back, depth)
                }
            }
            .padding(.bottom, 30) // Circle 개체 아래 패딩
          
            Grid {
                
                GridRow { // 첫번째 GridRow - 깊이 조정
                    Text("Depth")
                    Slider(value: $depth, in: 0...50) {
                        Text("Depth")
                    }
                }
                
                
                GridRow{ // 두번째 GridRow - 색상 조정
                    Text("Colors")
                    HStack { // HStack
                        ColorPicker("Color", selection: $colors[0]) // Color Picker
                        ColorPicker("Color", selection: $colors[1])
                        
                        
                        Spacer() // 색상 피커와 텍스트를 좌측 정렬하기 위함
                    }
                    .labelsHidden()
                }
            }
            .padding(30)
            .background(.thickMaterial)
            .frame(maxWidth: 500) // 슬라이더의 최대 가로 사이즈 정의  minDiameter + diameterChange * Double(index) 
            
        }
        .frame(minHeight: 560) // 전체 VStack의 최소 길이 정의
        
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
