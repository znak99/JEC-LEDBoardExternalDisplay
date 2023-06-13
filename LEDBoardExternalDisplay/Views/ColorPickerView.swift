//
//  ColorPickerView.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct ColorPickerView: View {
    
    @State var color: Color = .white
    
    @ObservedObject var colorPickerManager = ColorPickerManager()
    @ObservedObject var messageManager: GenerateMessageManager
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        GeometryReader { geo in
            if geo.size.width < geo.size.height {
                VStack {
                    ColorPickerHeaderPortrait(geoWidth: geo.size.width)
                    
                    FontColorPreview(red: $colorPickerManager.selectedColor.red,
                                     green: $colorPickerManager.selectedColor.green,
                                     blue: $colorPickerManager.selectedColor.blue,
                                     alpha: $colorPickerManager.selectedColor.alpha)
                    
                    RGBSlider(
                        red: $colorPickerManager.selectedColor.red, green: $colorPickerManager.selectedColor.green,
                        blue: $colorPickerManager.selectedColor.blue, alpha: $colorPickerManager.selectedColor.alpha)
                    
                    RecommendColors(
                        geoSize: geo.size,
                        redValue: $colorPickerManager.selectedColor.red,
                        greenValue: $colorPickerManager.selectedColor.green,
                        blueValue: $colorPickerManager.selectedColor.blue)
                    
                    SaveButtonPortrait(action: {
                        colorPickerManager.setSelectedColorToFontColor(messageManager: messageManager)
                        dismiss()
                    }, red: $colorPickerManager.selectedColor.red,
                       green: $colorPickerManager.selectedColor.green,
                       blue: $colorPickerManager.selectedColor.blue,
                       alpha: $colorPickerManager.selectedColor.alpha)
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
                        FontColorPreview(red: $colorPickerManager.selectedColor.red,
                                         green: $colorPickerManager.selectedColor.green,
                                         blue: $colorPickerManager.selectedColor.blue,
                                         alpha: $colorPickerManager.selectedColor.alpha)
                        RGBSlider(
                            red: $colorPickerManager.selectedColor.red, green: $colorPickerManager.selectedColor.green,
                            blue: $colorPickerManager.selectedColor.blue, alpha: $colorPickerManager.selectedColor.alpha)
                    }
                    
                    SaveButtonLandscape(action: {
                        colorPickerManager.setSelectedColorToFontColor(messageManager: messageManager)
                        dismiss()
                    }, red: $colorPickerManager.selectedColor.red,
                       green: $colorPickerManager.selectedColor.green,
                       blue: $colorPickerManager.selectedColor.blue,
                       alpha: $colorPickerManager.selectedColor.alpha)
                }
                .padding()
            }
        }
        .onAppear {
            withAnimation {
                colorPickerManager.setCurrentColorOnSlider(messageManager: messageManager)
            }
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView(messageManager: GenerateMessageManager())
    }
}
