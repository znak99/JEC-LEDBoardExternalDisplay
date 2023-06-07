//
//  FontColorPreview.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/07.
//

import SwiftUI

struct FontColorPreview: View {
    
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    @Binding var alpha: Double
    
    var body: some View {
        Text("Sample text")
            .font(.largeTitle)
            .foregroundColor(
                Color.init(red: red / 255,
                           green: green / 255,
                           blue: blue / 255,
                           opacity: alpha))
            .shadow(color: .init(red: red / 255,
                                 green: green / 255,
                                 blue: blue / 255,
                                 opacity: alpha), radius: 12)
            .fontWeight(.bold)
            .padding()
    }
}

struct FontColorPreview_Previews: PreviewProvider {
    static var previews: some View {
        FontColorPreview(red: .constant(0), green: .constant(0), blue: .constant(0), alpha: .constant(0))
    }
}
