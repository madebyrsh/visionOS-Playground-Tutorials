//
//  SeaCreatureDetailView.swift
//  SeaCreatures
//
//  Created by Shayne Ryu on 5/16/26.
//

import SwiftUI

struct SeaCreatureDetailView: View {
    
    let modelName: String // 이 상수를 생성하자마자 #Preview에 Missing argument 에러가 뜨는 이유는?
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SeaCreatureDetailView(modelName: "SlugScene")
}
