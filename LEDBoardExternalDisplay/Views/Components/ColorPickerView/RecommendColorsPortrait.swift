//
//  RecommendColors.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/07.
//

import SwiftUI

struct RecommendColorsPortrait: View {
    
    @State var geoSize: CGSize
    
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    var body: some View {
        VStack {
            HStack {
                Text("Recommended colors")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
            }
            HStack {
                RecommendColorCircle(
                    red: 0, green: 223, blue: 162, geoWidth: geoSize.width,
                    redValue: $redValue,
                    greenValue: $greenValue,
                    blueValue: $blueValue)
                Spacer()
                RecommendColorCircle(
                    red: 255, green: 0, blue: 96, geoWidth: geoSize.width,
                    redValue: $redValue,
                    greenValue: $greenValue,
                    blueValue: $blueValue)
                Spacer()
                RecommendColorCircle(
                    red: 121, green: 224, blue: 238, geoWidth: geoSize.width,
                    redValue: $redValue,
                    greenValue: $greenValue,
                    blueValue: $blueValue)
                Spacer()
                RecommendColorCircle(
                    red: 183, green: 153, blue: 255, geoWidth: geoSize.width,
                    redValue: $redValue,
                    greenValue: $greenValue,
                    blueValue: $blueValue)
            }
            .padding()
            
            HStack {
                RecommendColorCircle(
                    red: 236, green: 229, blue: 199, geoWidth: geoSize.width,
                    redValue: $redValue,
                    greenValue: $greenValue,
                    blueValue: $blueValue)
                Spacer()
                RecommendColorCircle(
                    red: 0, green: 255, blue: 0, geoWidth: geoSize.width,
                    redValue: $redValue,
                    greenValue: $greenValue,
                    blueValue: $blueValue)
                Spacer()
                RecommendColorCircle(
                    red: 255, green: 243, blue: 158, geoWidth: geoSize.width,
                    redValue: $redValue,
                    greenValue: $greenValue,
                    blueValue: $blueValue)
                Spacer()
                RecommendColorCircle(
                    red: 255, green: 255, blue: 255, geoWidth: geoSize.width,
                    redValue: $redValue,
                    greenValue: $greenValue,
                    blueValue: $blueValue)
            }
            .padding(.horizontal)
        }
        .padding()
        .background(Color.init(red: 32/255, green: 32/255, blue: 32/255))
        .cornerRadius(12)
    }
}

struct RecommendColorsPortrait_Previews: PreviewProvider {
    static var previews: some View {
        RecommendColorsPortrait(geoSize: CGSize.zero, redValue: .constant(0), greenValue: .constant(0), blueValue: .constant(0))
    }
}
