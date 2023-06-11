//
//  MessageColorPicker.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct MessageColorPicker: View {
    
    @Binding var color: Color
    @Binding var isShowColorPickerView: Bool
    
    var body: some View {
        ColorPicker("Select font color", selection: $color)
            .MessageOptionsStyle()
            .onTapGesture {
                isShowColorPickerView = true
            }
    }
}

struct MessageColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        MessageColorPicker(color: .constant(.red), isShowColorPickerView: .constant(false))
    }
}
