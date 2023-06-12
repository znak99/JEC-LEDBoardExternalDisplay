//
//  InternalLEDBoardView.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/09.
//

import SwiftUI

struct InternalLEDBoardView: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                if geo.size.width > geo.size.height {
                    
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
            .onAppear {
                
            }
        }
    }
}

struct InternalLEDBoardView_Previews: PreviewProvider {
    static var previews: some View {
        InternalLEDBoardView()
    }
}
