//
//  GenerateMessageView.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct GenerateMessageView: View {
    
    @EnvironmentObject var messageManager: GenerateMessageManager
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {

                    // Use the shorter side of the screen for font size
                    MainHeader(fontSize: geo.size.width < geo.size.height
                           ? geo.size.width : geo.size.height)
                    
                    MessageField(message: $messageManager.message.text)
                    
                    if messageManager.isShowBlankFieldWarnning {
                        BlankFieldWarnning()
                    }
                    
                    ExternalDisplayStatusInfo(status: $messageManager.isExternalDisplayConnected)
                    
                    if geo.size.width < geo.size.height { // Portrait
                        OptionsAndButtonPortrait(action: {
                            
                        }, status: $messageManager.isExternalDisplayConnected,
                                                 color: messageManager.message.fontColor,
                                                 isShowColorPickerView: $messageManager.isShowColorPicker)
                    } else { // Landscape
                        OptionsAndButtonLandscape(action: {
                            
                        }, status: $messageManager.isExternalDisplayConnected,
                                                  color: messageManager.message.fontColor,
                                                  isShowColorPickerView: $messageManager.isShowColorPicker)
                    }
                }
                .padding(.horizontal)
                .sheet(isPresented: $messageManager.isShowColorPicker) {
                    ColorPickerView(messageManager: messageManager)
                }
            }
            .toolbar(.hidden)
        }
    }
}

struct GenerateMessageView_Previews: PreviewProvider {
    static var previews: some View {
        GenerateMessageView()
    }
}
