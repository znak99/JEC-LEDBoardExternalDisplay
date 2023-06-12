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
            if displayManager.isDisplayingMessage {
                displayManager.isShowUnavailableWarnning = true
                return
            }
            displayManager.isShowUnavailableWarnning = false
            displayManager.isDisplayingMessage = true
            message.text = ""
        } else { // Internal Display
            isLEDBoardStart.toggle()
        }
        displayManager.message.text = message.text
        displayManager.message.fontColor = message.fontColor
    }
}
