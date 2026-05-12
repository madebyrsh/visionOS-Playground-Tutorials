//
//  LabelView.swift
//  LabelMaker
//
//  Created by Shayne Ryu on 5/12/26.
//

import SwiftUI

struct LabelView: View {
    
    
    @State private var text = "" // label 텍스트 프로퍼티 생성
    
    var body: some View {
        
        TextField("Type to enter text", text: $text) // 입력창
            .frame(width: 500, height: 500)
            .padding()
            .background(.blue)
    }
    
    
}

#Preview {
    LabelView()
}
