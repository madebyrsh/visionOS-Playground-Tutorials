//
//  ColorButton.swift
//  LabelMaker
//
//  Created by Shayne Ryu on 5/14/26.
//

import SwiftUI

struct ColorButton: View {
    
    @State var color: Color
    
    var body: some View {
      
        Button {
            
        } label: {
            Circle()
                .foregroundStyle(color)
                .frame(height: 34)
        }
        .buttonBorderShape(.circle)
    }
}

#Preview {
    ColorButton(color: .cyan) {
        
    }
}
