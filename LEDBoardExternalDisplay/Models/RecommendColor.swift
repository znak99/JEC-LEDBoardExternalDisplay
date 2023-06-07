//
//  RecommendColor.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/07.
//

import Foundation
import SwiftUI

enum RecommendColor {
    case emerald
    case pink
    case skyBlue
    case purple
    case beige
    case green
    case vanilla
    case white
    
    var color: Color {
        switch self {
        case .emerald:
            return Color.init(red: 0, green: 223 / 255, blue: 162 / 255)
        case .pink:
            return Color.init(red: 1, green: 0, blue: 96 / 255)
        case .skyBlue:
            return Color.init(red: 121 / 255, green: 224 / 255, blue: 238 / 255)
        case .purple:
            return Color.init(red: 183 / 255, green: 153 / 255, blue: 1)
        case .beige:
            return Color.init(red: 236 / 255, green: 229 / 255, blue: 199 / 255)
        case .green:
            return Color.init(red: 0, green: 1, blue: 0)
        case .vanilla:
            return Color.init(red: 1, green: 243 / 255, blue: 158 / 255)
        case .white:
            return Color.init(red: 1, green: 1, blue: 1)
        }
    }
}
