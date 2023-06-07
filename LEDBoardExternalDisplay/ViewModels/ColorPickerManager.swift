//
//  ColorPickerManager.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/07.
//

import Foundation
import SwiftUI

class ColorPickerManager: ObservableObject {
    @Published var currentColor: Color = .white
    @Published var red: Double = 255
    @Published var green: Double = 255
    @Published var blue: Double = 255
    @Published var alpha: Double = 1
    
    func selectRecommendColor(color: RecommendColor) {
        currentColor = color.color
    }
}
