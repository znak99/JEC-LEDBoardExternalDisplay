//
//  LEDBoardFontColor.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import Foundation
import SwiftUI

enum LEDBoardFontColor {
    case emerald
    case skyBlue
    case violet
    
    var color: Color {
        switch self {
        case .emerald:
            return Color.neonEmerald
        case .skyBlue:
            return Color.neonSkyBlue
        case .violet:
            return Color.neonViolet
        }
    }
}
