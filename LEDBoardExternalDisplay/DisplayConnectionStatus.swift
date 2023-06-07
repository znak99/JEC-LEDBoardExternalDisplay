//
//  DisplayConnectionStatus.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import Foundation

enum DisplayConnectionStatus {
    case connected
    case disconnected
    
    var message: String {
        switch self {
        case .connected:
            return "External display is connected"
        case .disconnected:
            return "External display is disconnected"
        }
    }
    
    var iconName: String {
        switch self {
        case .connected:
            return "ipad.and.iphone"
        case .disconnected:
            return "ipad.and.iphone.slash"
        }
    }
    
    var buttonText: String {
        switch self {
        case .connected:
            return "Start on external display"
        case .disconnected:
            return "Start on this device"
        }
    }
}
