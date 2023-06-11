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
    
    func displayMessage() {
        if message.text.isEmpty {
            isShowBlankFieldWarnning = true
            return
        }
    }
}
