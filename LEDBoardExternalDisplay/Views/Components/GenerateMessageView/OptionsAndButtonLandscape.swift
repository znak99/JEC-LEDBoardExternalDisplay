//
//  MessageOptionsGroup.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct OptionsAndButtonLandscape: View {
    
    var action: () -> ()
    @Binding var status: Bool
    @State var color: Color
    @Binding var isShowColorPickerView: Bool
    
    var body: some View {
        HStack {
            VStack {
                MessageColorPicker(color: color, isShowColorPickerView: $isShowColorPickerView)
                DisplayModeSelector()
            }
            Button(action: action) {
                HStack {
                    Spacer()
                    Text(status ? DisplayConnectionStatus.connected.buttonText : DisplayConnectionStatus.disconnected.buttonText)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .minimumScaleFactor(0.5)
                    Spacer()
                }
            }
            .padding()
            .background(Color.yellow)
            .cornerRadius(8)
            .shadow(color: .yellow, radius: 8)
            .padding()
            .padding(.top)
        }
    }
}

struct OptionsAndButtonLandscape_Previews: PreviewProvider {
    static var previews: some View {
        OptionsAndButtonLandscape(action: { print("Button") }, status: .constant(true), color: .red, isShowColorPickerView: .constant(false))
    }
}
