//
//  ExternalDisplayStatusInfo.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct ExternalDisplayStatusInfo: View {
    
    @Binding var status: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Text(status ?
                 DisplayConnectionStatus.connected.message :
                    DisplayConnectionStatus.disconnected.message)
            Image(systemName: status ?
                  DisplayConnectionStatus.connected.iconName :
                     DisplayConnectionStatus.disconnected.iconName)
            
        }
    }
}

struct ExternalDisplayStatusInfo_Previews: PreviewProvider {
    static var previews: some View {
        ExternalDisplayStatusInfo(status: .constant(true))
    }
}
