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
    
    func selectRecommendColor(color: RecommendColor) {
        currentColor = color.color
    }
}
