//
//  MessageColorPicker.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct MessageColorPicker: View {
    
    @State var color: Color
    
    var body: some View {
        ColorPicker("Select font color", selection: $color)
            .MessageOptionsStyle()
    }
}

struct MessageColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        MessageColorPicker(color: .red)
    }
}
