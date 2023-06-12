//
//  DisplayManager.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/12.
//

import Foundation
import Combine

class DisplayManager: ObservableObject {
    @Published var message = Message()
    @Published var offsetX: Double = 0.0
    @Published var isDisplayingMessage = false
    @Published var isShowUnavailableWarnning = false
}
