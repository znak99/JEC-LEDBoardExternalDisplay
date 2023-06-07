//
//  ColorPickerView.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct ColorPickerView: View {
    
    @State var color: Color = .white
    
    @State private var red: Double = 14
    @State private var green: Double = 200
    @State private var blue: Double = 100
    @State private var alpha: Double = 0.5
    
    @ObservedObject var colorPickerManager = ColorPickerManager()
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        GeometryReader { geo in
            if geo.size.width < geo.size.height {
                VStack {
                    ColorPickerHeaderPortrait(geoWidth: geo.size.width)
                    
                    FontColorPreview(red: $colorPickerManager.red,
                                     green: $colorPickerManager.green,
                                     blue: $colorPickerManager.blue,
                                     alpha: $colorPickerManager.alpha)
                    
                    
                    RGBSlider(
                        red: $colorPickerManager.red, green: $colorPickerManager.green,
                        blue: $colorPickerManager.blue, alpha: $colorPickerManager.alpha)
                    
                    RecommendColorsPortrait(
                        geoSize: geo.size,
                        redValue: $colorPickerManager.red,
                        greenValue: $colorPickerManager.green,
                        blueValue: $colorPickerManager.blue)
                    
                    Button(action: {}) {
                        HStack {
                            Spacer()
                            Text("Select this color")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(red + green + blue < 320 ? .white : alpha < 0.6 ? .white : .black)
                                .minimumScaleFactor(0.5)
                            Spacer()
                        }
                    }
                    .padding()
                    .background(Color.init(red: red / 255, green: green / 255, blue: blue / 255, opacity: alpha))
                    .cornerRadius(8)
                    .shadow(color: Color.init(red: red / 255, green: green / 255, blue: blue / 255, opacity: alpha), radius: 4)
                    .padding()
                    .padding(.top)
                }
                .padding()
            } else {
                VStack {
                    HStack {
                        ColorPickerHeaderLandscape(geoWidth: geo.size.width)
                        Spacer()
                        Button(action: { dismiss() }) {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(Color.white)
                                .font(Font.title2)
                        }
                    }
                    
                    HStack(alignment: .center) {
                        FontColorPreview(red: $colorPickerManager.red,
                                         green: $colorPickerManager.green,
                                         blue: $colorPickerManager.blue,
                                         alpha: $colorPickerManager.alpha)
                        RGBSlider(
                            red: $colorPickerManager.red, green: $colorPickerManager.green,
                            blue: $colorPickerManager.blue, alpha: $colorPickerManager.alpha)
                    }
                }
                .padding()
            }
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
