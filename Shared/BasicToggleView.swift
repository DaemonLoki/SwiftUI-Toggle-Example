//
//  BasicToggleView.swift
//  Toggle-Example
//
//  Created by Stefan Blos on 08.04.21.
//

import SwiftUI

struct BasicToggleView: View {
    @State private var isToggleActive = false
    
    var body: some View {
        VStack(spacing: 40) {
            // Example of a Toggle with only text
            Toggle("Is active:", isOn: $isToggleActive)
            
            // Example of a Toggle with text and an image
            Toggle(isOn: $isToggleActive, label: {
                Label("Is active:", systemImage: "bolt.circle")
            })
        }
        .padding(40)
    }
}

struct BasicToggleView_Previews: PreviewProvider {
    static var previews: some View {
        BasicToggleView()
    }
}
