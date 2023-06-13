//
//  ExternalLEDBoardView.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/07.
//

import SwiftUI

struct ExternalLEDBoardView: View {
    
    @EnvironmentObject var displayManager: DisplayManager
    @EnvironmentObject var messageManager: GenerateMessageManager
    
    var body: some View {
        GeometryReader { geo in
            Text(displayManager.message.text)
                .font(.system(size: geo.size.width / 2))
                .fontWeight(.black)
                .fixedSize(horizontal: true, vertical: true)
                .offset(x: displayManager.offsetX)
                .foregroundColor(displayManager.isDisplayingMessage ? displayManager.message.fontColor : .black)
                .shadow(color: displayManager.isDisplayingMessage ? displayManager.message.fontColor : .black, radius: 12)
                .onAppear {
                    displayManager.offsetX = geo.size.width
                }
                .onChange(of: displayManager.isDisplayingMessage, perform: { isDisplay in
                    if isDisplay {
                        withAnimation(.linear(duration: Double(displayManager.message.text.count) )) {
                            displayManager.offsetX -= Double(displayManager.message.text.count) * Double(geo.size.width)
                            messageManager.message.text = ""
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + Double(displayManager.message.text.count)) {
                            print("Called count text: \(Double(displayManager.message.text.count))")
                            displayManager.isDisplayingMessage = false
                            displayManager.isShowUnavailableWarnning = false
                            displayManager.offsetX = geo.size.width
                        }
                    }

                })
        }
    }
}

struct ExternalLEDBoardView_Previews: PreviewProvider {
    static var previews: some View {
        ExternalLEDBoardView()
    }
}
