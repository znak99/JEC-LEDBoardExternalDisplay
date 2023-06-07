//
//  RGBSlider.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/07.
//

import SwiftUI

struct RGBSlider: View {
    
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    @Binding var alpha: Double
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("R")
                    .font(.title2)
                    .fontWeight(.semibold)
                Slider(value: $red, in: 0...255)
                    .tint(Color.red)
            }
            HStack {
                Text("G")
                    .font(.title2)
                    .fontWeight(.semibold)
                Slider(value: $green, in: 0...255)
                    .tint(Color.green)
            }
            HStack {
                Text("B")
                    .font(.title2)
                    .fontWeight(.semibold)
                Slider(value: $blue, in: 0...255)
                    .tint(Color.blue)
            }
            HStack {
                Text("A")
                    .font(.title2)
                    .fontWeight(.semibold)
                Slider(value: $alpha, in: 0...1)
                    .tint(Color.gray)
            }
        }
        .padding()
    }
}

struct RGBSlider_Previews: PreviewProvider {
    static var previews: some View {
        RGBSlider(red: .constant(0), green: .constant(0), blue: .constant(0), alpha: .constant(0))
    }
}
