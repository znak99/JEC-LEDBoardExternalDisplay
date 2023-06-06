//
//  MessageOptionsGroup.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct LandscapeOptionsAndButtonLayout: View {
    
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
            StartButton(action: action, status: $status)
        }
    }
}

struct LandscapeOptionsAndButtonLayout_Previews: PreviewProvider {
    static var previews: some View {
        LandscapeOptionsAndButtonLayout(action: { print("Button") }, status: .constant(true), color: .red, isShowColorPickerView: .constant(false))
    }
}
