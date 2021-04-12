//
//  ToggleWithCustomStyle.swift
//  Toggle-Example
//
//  Created by Stefan Blos on 06.04.21.
//

import SwiftUI

struct ToggleWithCustomStyle: View {
    @State private var lightModeEnabled = true
    var body: some View {
        Toggle("Enable light mode: ", isOn: $lightModeEnabled)
            .toggleStyle(DarkModeStyle())
    }
}

struct ToggleWithCustomStyle_Previews: PreviewProvider {
    static var previews: some View {
        ToggleWithCustomStyle()
    }
}
