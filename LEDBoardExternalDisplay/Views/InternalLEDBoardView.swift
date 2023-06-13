//
//  InternalLEDBoardView.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/09.
//

import SwiftUI

struct InternalLEDBoardView: View {
    
    @EnvironmentObject var displayManager: DisplayManager
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color.black.ignoresSafeArea()
                VStack {
                    if geo.size.width > geo.size.height {
                        Text(displayManager.message.text)
                            .foregroundColor(displayManager.message.fontColor)
                            .fontWeight(.black)
                            .font(.system(size: geo.size.width / 2.3))
                            .offset(x: displayManager.offsetX)
                            .fixedSize(horizontal: true, vertical: true)
                            .shadow(color: displayManager.message.fontColor, radius: 12)
                            .onChange(of: displayManager.offsetX, perform: { offsetX in
                                if offsetX == CGFloat(geo.size.width * CGFloat(displayManager.message.text.count)) {
                                    displayManager.offsetX = geo.size.width
                                }
                            })
                            .onAppear {
                                print(displayManager.message.text)
                                displayManager.offsetX = geo.size.width
                                
                                withAnimation(Animation.linear(duration: Double(displayManager.message.text.count) + 2).repeatForever(autoreverses: false)) {
                                    displayManager.offsetX -= CGFloat(geo.size.width * CGFloat(displayManager.message.text.count))
                                }
                            }
                    } else {
                        Spacer()
                        HStack {
                            Spacer()
                            Text("LEDBoard only works in landscape mode")
                                .foregroundColor(.white)
                                .font(.subheadline)
                            Spacer()
                        }
                        Spacer()
                    }
                        
                }
            }
            .onTapGesture {
                dismiss()
            }
        }
    }
}

struct InternalLEDBoardView_Previews: PreviewProvider {
    static var previews: some View {
        InternalLEDBoardView()
    }
}
