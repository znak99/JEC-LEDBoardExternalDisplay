//
//  ColorPickerHeader.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/07.
//

import SwiftUI

struct ColorPickerHeaderPortrait: View {
    
    let radius: CGFloat = 4
    @State var geoWidth: Double
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                HStack(spacing: 0) {
                    Text("C")
                        .HeaderFontStyle(fontColor: .red, shadowRadius: radius)
                    Text("o")
                        .HeaderFontStyle(fontColor: .orange, shadowRadius: radius)
                    Text("l")
                        .HeaderFontStyle(fontColor: .yellow, shadowRadius: radius)
                    Text("o")
                        .HeaderFontStyle(fontColor: .green, shadowRadius: radius)
                    Text("r")
                        .HeaderFontStyle(fontColor: .blue, shadowRadius: radius)
                }
                .offset(x: -(geoWidth / 7))
                    
                HStack(spacing: 0) {
                    Text("P")
                        .HeaderFontStyle(fontColor: .blue, shadowRadius: radius)
                    Text("i")
                        .HeaderFontStyle(fontColor: .purple, shadowRadius: radius)
                    Text("c")
                        .HeaderFontStyle(fontColor: .red, shadowRadius: radius)
                    Text("k")
                        .HeaderFontStyle(fontColor: .orange, shadowRadius: radius)
                    Text("e")
                        .HeaderFontStyle(fontColor: .yellow, shadowRadius: radius)
                    Text("r")
                        .HeaderFontStyle(fontColor: .green, shadowRadius: radius)
                }
                .offset(x: geoWidth / 7)
            }
            .font(.system(size: geoWidth / 7))
            Spacer()
        }
    }
}

struct ColorPickerHeaderPortrait_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerHeaderPortrait(geoWidth: 400)
    }
}
