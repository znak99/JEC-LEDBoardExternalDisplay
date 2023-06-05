//
//  ViewExtension.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import Foundation
import SwiftUI

extension View {
    func HeaderFontStyle(fontColor color: Color, shadowRadius radius: CGFloat) -> some View {
        self
            .fontWeight(.black)
            .foregroundColor(color)
            .shadow(color: color, radius: radius)
            .minimumScaleFactor(0.5)
    }
    
    func MessageOptionsStyle() -> some View {
        self
            .padding(.horizontal)
            .font(.headline)
            .foregroundColor(.white)
            .padding([.top, .horizontal])
    }
}
