//
//  MessageField.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct MessageField: View {
    
    @Binding var message: String
    
    var body: some View {
        TextField("", text: $message)
            .font(.title2)
            .fontWeight(.black)
            .foregroundColor(.black)
            .padding()
            .background(Color.white)
            .cornerRadius(8)
            .shadow(color: .white, radius: 12)
            .keyboardType(.default)
            .autocorrectionDisabled(true)
            .textInputAutocapitalization(.never)
    }
}

struct MessageField_Previews: PreviewProvider {
    static var previews: some View {
        MessageField(message: .constant("MESSAGE"))
    }
}
