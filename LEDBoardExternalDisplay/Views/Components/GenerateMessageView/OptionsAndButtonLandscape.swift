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
    @Binding var color: Color
    @Binding var isShowColorPickerView: Bool
    
    var body: some View {
        HStack {
            MessageColorPicker(color: $color, isShowColorPickerView: $isShowColorPickerView)
            
        }
    }
}

struct OptionsAndButtonLandscape_Previews: PreviewProvider {
    static var previews: some View {
        OptionsAndButtonLandscape(action: { print("Button") }, status: .constant(true), color: .constant(.red), isShowColorPickerView: .constant(false))
    }
}
