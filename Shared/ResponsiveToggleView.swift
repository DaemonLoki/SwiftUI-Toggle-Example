//
//  ResponsiveToggleView.swift
//  Shared
//
//  Created by Stefan Blos on 06.04.21.
//

import SwiftUI

struct ResponsiveToggleView: View {
    @State private var isActive = true
    
    var body: some View {
        #if os(macOS)
        Toggle("Is active:", isOn: $isActive)
            .padding(40)
            .accentColor(.red)
            .toggleStyle(CheckboxToggleStyle())
        #else
        Toggle("Is active:", isOn: $isActive)
            .padding(40)
            .foregroundColor(Color.blue)
            .accentColor(.red)
            .toggleStyle(SwitchToggleStyle(tint: .orange))
        #endif
    }
}

struct ResponsiveToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ResponsiveToggleView()
    }
}
