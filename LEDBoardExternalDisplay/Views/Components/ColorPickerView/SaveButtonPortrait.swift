//
//  SaveButton.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/08.
//

import SwiftUI

struct SaveButtonPortrait: View {
    
    var action: () -> ()
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    @Binding var alpha: Double
    
    var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                Text("Select this color")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(red + green + blue < 320 ? .white : alpha < 0.6 ? .white : .black)
                    .minimumScaleFactor(0.5)
                Spacer()
            }
        }
        .padding()
        .background(Color.init(red: red / 255, green: green / 255, blue: blue / 255, opacity: alpha))
        .cornerRadius(8)
        .shadow(color: Color.init(red: red / 255, green: green / 255, blue: blue / 255, opacity: alpha), radius: 4)
        .padding()
        .padding(.top)
    }
}

struct SaveButton_Previews: PreviewProvider {
    static var previews: some View {
        SaveButtonPortrait(action: { print("LEDBoard") },
                   red: .constant(0), green: .constant(0),
                   blue: .constant(0), alpha: .constant(0))
    }
}
