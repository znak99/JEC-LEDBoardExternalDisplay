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
    }
    
    func MessageOptionsStyle() -> some View {
        self
            .padding(.horizontal)
            .font(.title3)
            .foregroundColor(.white)
            .padding([.top, .horizontal])
    }
}
