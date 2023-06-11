//
//  GenerateMessageManager.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/09.
//

import Foundation

class GenerateMessageManager: ObservableObject {
    @Published var message = Message()
    @Published var isShowBlankFieldWarnning = false
    @Published var isExternalDisplayConnected = false
    @Published var isShowColorPicker = false
    @Published var isLEDBoardStart = false
    
    func displayMessage(displayManager: DisplayManager) {
        if message.text.isEmpty {
            isShowBlankFieldWarnning = true
            return
        }
        isShowBlankFieldWarnning = false
        
        if isExternalDisplayConnected { // External Display
            displayManager.message.text = message.text
            displayManager.message.fontColor = message.fontColor
            displayManager.displayMessage = true
            message.text = ""
        } else { // Internal Display
            isLEDBoardStart.toggle()
        }
    }
}
