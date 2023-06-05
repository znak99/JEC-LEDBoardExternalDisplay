//
//  GenerateMessageView.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct GenerateMessageView: View {
    
    // FIXME: - Temporary variable (change to Message.text in view model)
    @State private var message: String = ""
    
    var body: some View {
        GeometryReader { geo in
            VStack {

                // Use the shorter side of the screen for font size
                Header(fontSize: geo.size.width < geo.size.height
                       ? geo.size.width : geo.size.height)
                
                MessageField(message: $message)
                
            }
            .padding(.horizontal)
        }
    }
}

struct GenerateMessageView_Previews: PreviewProvider {
    static var previews: some View {
        GenerateMessageView()
    }
}
