//
//  LabelView.swift
//  LabelMaker
//
//  Created by Shayne Ryu on 5/12/26.
//

import SwiftUI

struct LabelView: View {
    
    
    @Binding var label: Label // label 텍스트 프로퍼티 생성 // @state private var text = "" 를 @Binding var label: Label로 변경한 이유는?
    
    var body: some View {
        
        TextField("Type to enter text", text: $label, axis: .vertical) // 입력창 axis .vertical이 하는 것은 무엇인가
            .frame(width: 500, height: 500)
            .padding()
            .background(.blue, in: RoundedRectangle(cornerRadius: label.cornerRadius)) // 왜 in: RoundedRectangle방식인지?
            .foregroundStyle(.black) // foregroundStyle은 무엇인가?
            .font(.system(size: 40, weight: .semibold))
            .multilineTextAlignment(.center) // Text를 가운데 정렬 - multilineTextAlignment는 무엇인가? Axis 매개변수는 텍스트가 사용 가능한 TextField 공간에 맞지 않을 때 스크롤 방향을 설정합니다. 기본값은 .horizontal이지만, 다중 행 텍스트의 경우 세로 스크롤을 원합니다.+ 텍스트필드내에 글자수가 넘어가면 원래 오른쪽으로 밀려나가면서 왼쪽글이 안보이게 되는데 이것을 하면  글자가 많아져서 글이 넘어가면 아래로 세로 정렬되며 줄 바꿈이 된다.
        
    }
    
    
}

#Preview {
    @Previewable @State var label = Label() //@prewviewable은 뭐지? 여기서는 왜 @state?
    LabelView()
}
