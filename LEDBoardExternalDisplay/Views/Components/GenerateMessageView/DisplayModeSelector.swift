//
//  DisplayModeSelector.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct DisplayModeSelector: View {
    var body: some View {
        Button(action: {}) {
            HStack {
                // FIXME: - Blink toggle
                Text("Select mode")
                Spacer()
                Image(systemName: "chart.line.uptrend.xyaxis")
                // chart.line.uptrend.xyaxis
                // chart.line.flattrend.xyaxis
            }
            .MessageOptionsStyle()
        }
    }
}

struct DisplayModeSelector_Previews: PreviewProvider {
    static var previews: some View {
        DisplayModeSelector()
    }
}
