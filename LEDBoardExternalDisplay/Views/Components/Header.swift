//
//  Header.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct Header: View {
    
    @State var fontSize: CGFloat
    
    private let titleTextShadowRadius: CGFloat = 15
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Text("L")
                .HeaderFontStyle(fontColor: .red, shadowRadius: titleTextShadowRadius)
            Text("E")
                .HeaderFontStyle(fontColor: .green, shadowRadius: titleTextShadowRadius)
            Text("D")
                .HeaderFontStyle(fontColor: .blue, shadowRadius: titleTextShadowRadius)
            Text(" Board")
                .HeaderFontStyle(fontColor: .yellow, shadowRadius: titleTextShadowRadius)
        }
        .font(.system(size: fontSize / 7))
        .lineLimit(1)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(fontSize: 400)
    }
}
