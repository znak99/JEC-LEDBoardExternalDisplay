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
            Text("")
        }
    }
}

struct ExternalDisplayStatusInfo_Previews: PreviewProvider {
    static var previews: some View {
        ExternalDisplayStatusInfo()
    }
}
