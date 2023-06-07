//
//  ColorPickerHeaderLandscape.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/07.
//

import SwiftUI

struct ColorPickerHeaderLandscape: View {
    
    let radius: CGFloat = 4
    @State var geoWidth: Double
    
    var body: some View {
        HStack {
            Group {
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
            Group {
                Text(" P")
                    .HeaderFontStyle(fontColor: .purple, shadowRadius: radius)
                Text("i")
                    .HeaderFontStyle(fontColor: .red, shadowRadius: radius)
                Text("c")
                    .HeaderFontStyle(fontColor: .orange, shadowRadius: radius)
                Text("k")
                    .HeaderFontStyle(fontColor: .yellow, shadowRadius: radius)
                Text("e")
                    .HeaderFontStyle(fontColor: .green, shadowRadius: radius)
                Text("r")
                    .HeaderFontStyle(fontColor: .blue, shadowRadius: radius)
            }
        }
        .font(.system(size: geoWidth / 15))
    }
}

struct ColorPickerHeaderLandscape_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerHeaderLandscape(geoWidth: 400)
    }
}
