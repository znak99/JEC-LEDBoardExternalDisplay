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
        // TODO: set current color
        let rbga = UIColor(message.message.fontColor).cgColor.components
        if let rbga {
            selectedColor.red = rbga[0]
            selectedColor.green = rbga[1]
            selectedColor.blue = rbga[2]
            selectedColor.alpha = rbga[3]
        }
        
        print(message.message.fontColor)
    }
    
    func setSelectedColorToFontColor(messageManager message: GenerateMessageManager) {
        message.message.fontColor = Color.init(red: selectedColor.red,
                                               green: selectedColor.green,
                                               blue: selectedColor.blue,
                                               opacity: selectedColor.alpha)
    }
}
