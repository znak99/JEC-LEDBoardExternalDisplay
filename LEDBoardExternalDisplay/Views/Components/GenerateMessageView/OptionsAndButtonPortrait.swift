//
//  PortraitOptionsAndButtonLayout.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct OptionsAndButtonPortrait: View {
    
    @Binding var status: Bool
    @State var color: Color
    @Binding var isShowColorPickerView: Bool
    
    var body: some View {
        VStack {
            MessageColorPicker(color: color, isShowColorPickerView: $isShowColorPickerView)
            DisplayModeSelector()
            NavigationLink(destination: ExternalLEDBoardView()) {
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

struct OptionsAndButtonPortrait_Previews: PreviewProvider {
    static var previews: some View {
        OptionsAndButtonPortrait(status: .constant(true), color: .red, isShowColorPickerView: .constant(false))
    }
}
