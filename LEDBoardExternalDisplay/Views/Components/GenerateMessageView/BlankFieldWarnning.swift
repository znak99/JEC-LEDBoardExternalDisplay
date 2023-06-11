//
//  BlankFieldWarnning.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct BlankFieldWarnning: View {
    var body: some View {
        HStack {
            Text("* Message field can not be black")
                .foregroundColor(.pink)
                .font(.footnote)
            Spacer()
        }
        .padding(.vertical)
    }
}

struct BlankFieldWarnning_Previews: PreviewProvider {
    static var previews: some View {
        BlankFieldWarnning()
    }
}
