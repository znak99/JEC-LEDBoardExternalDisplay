//
//  ColorPickerManager.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/07.
//

import Foundation
import SwiftUI

class ColorPickerManager: ObservableObject {
    @Published var selectedColor = FontColor()
    
    func setCurrentColorOnSlider(messageManager message: GenerateMessageManager) {
        let rbga = UIColor(message.message.fontColor).cgColor.components
        if let rbga {
            selectedColor.red = rbga[0] * 255
            selectedColor.green = rbga[1] * 255
            selectedColor.blue = rbga[2] * 255
            selectedColor.alpha = rbga[3]
        }
    }
    
    func setSelectedColorToFontColor(messageManager message: GenerateMessageManager) {
        message.message.fontColor = Color.init(red: selectedColor.red / 255,
                                               green: selectedColor.green / 255,
                                               blue: selectedColor.blue / 255,
                                               opacity: selectedColor.alpha)
        
        message.isShowColorPicker = false
    }
}
