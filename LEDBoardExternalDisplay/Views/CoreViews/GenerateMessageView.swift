//
//  GenerateMessageView.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct GenerateMessageView: View {
    
    // FIXME: - Temporary variables
    @State private var message: String = ""
    @State private var messageFieldWarnning = true
    @State private var displayConnectionStatus = true
    
    var body: some View {
        GeometryReader { geo in
            VStack {

                // Use the shorter side of the screen for font size
                Header(fontSize: geo.size.width < geo.size.height
                       ? geo.size.width : geo.size.height)
                
                MessageField(message: $message)
                
                if messageFieldWarnning {
                    BlankFieldWarnning()
                }
                
                ExternalDisplayStatusInfo(status: $displayConnectionStatus)
                
                if geo.size.width < geo.size.height { // Portrait
                    PortraitOptionsAndButtonLayout(action: {
                        
                    }, status: $displayConnectionStatus, color: .red)
                } else { // Landscape
                    LandscapeOptionsAndButtonLayout(action: {
                        
                    }, status: $displayConnectionStatus, color: .red)
                }
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
