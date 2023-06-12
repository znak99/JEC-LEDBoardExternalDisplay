//
//  ExternalLEDBoardView.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/07.
//

import SwiftUI
import Combine

struct ExternalLEDBoardView: View {
    
    @EnvironmentObject var displayManager: DisplayManager
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer()
                Text(displayManager.message.text)
                    .font(.system(size: geo.size.width / 2))
                    .fixedSize(horizontal: true, vertical: true)
                    .offset(x: displayManager.offsetX)
                    .foregroundColor(displayManager.isDisplayingMessage ? displayManager.message.fontColor : .black)
                    .shadow(color: displayManager.isDisplayingMessage ? displayManager.message.fontColor : .black, radius: 12)
                    .onAppear {
                        displayManager.offsetX = geo.size.width
                    }
                    .onChange(of: displayManager.isDisplayingMessage, perform: { isDisplay in
                        if isDisplay {
                            withAnimation(.linear(duration: Double(displayManager.message.text.count) + 2 )) {
                                displayManager.offsetX -= geo.size.width + (geo.size.width / 2)
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + Double(displayManager.message.text.count) + 2) {
                                displayManager.isDisplayingMessage = false
                                displayManager.isShowUnavailableWarnning = false
                                displayManager.offsetX = geo.size.width
                            }
                        }
                        
                    })
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

struct ExternalLEDBoardView_Previews: PreviewProvider {
    static var previews: some View {
        ExternalLEDBoardView()
    }
}
