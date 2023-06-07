//
//  RecommendColorCircle.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/07.
//

import SwiftUI

struct RecommendColorCircle: View {
    
    @State var red: Double
    @State var green: Double
    @State var blue: Double
    
    @State var geoWidth: Double
    
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    var body: some View {
        Circle()
            .foregroundColor(Color.init(red: red / 255, green: green / 255, blue: blue / 255))
            .frame(width: geoWidth / 12, height: geoWidth / 12)
            .shadow(color: Color.init(red: red / 255, green: green / 255, blue: blue / 255), radius: 8)
            .onTapGesture {
                redValue = red
                greenValue = green
                blueValue = blue
            }
    }
}

struct RecommendColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        RecommendColorCircle(red: 0, green: 0, blue: 0, geoWidth: 0, redValue: .constant(0), greenValue: .constant(0), blueValue: .constant(0))
    }
}
