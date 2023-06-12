//
//  AlreadyDisplayingWarnning.swift
//  LEDBoardExternalDisplay
//
//  Created by cmStudent on 2023/06/12.
//

import SwiftUI

struct AlreadyDisplayingWarnning: View {
    var body: some View {
        HStack {
            Text("* Message is being displayed. Try again later")
                .foregroundColor(.pink)
                .font(.footnote)
            Spacer()
        }
        .padding(.vertical)
    }
}

struct AlreadyDisplayingWarnning_Previews: PreviewProvider {
    static var previews: some View {
        AlreadyDisplayingWarnning()
    }
}
