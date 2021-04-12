//
//  DarkModeStyle.swift
//  Toggle-Example
//
//  Created by Stefan Blos on 12.04.21.
//

import SwiftUI

struct DarkModeStyle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        Rectangle()
            .fill(configuration.isOn ? Color.blue : Color.black)
            .animation(.easeInOut(duration: 0.3))
            .frame(width: 160, height: 80)
            .cornerRadius(40)
            .overlay(
                Image(systemName: configuration.isOn ? "sun.max.fill" : "moon.fill")
                    .resizable()
                    .frame(width: configuration.isOn ? 60 : 50, height: configuration.isOn ? 60 : 50)
                    .foregroundColor(configuration.isOn ? .yellow : .white)
                    .padding(.all, 8)
                    .offset(x: configuration.isOn ? 40 : -40, y: 0)
                    .animation(Animation.easeInOut(duration: 0.3))
            )
            .onTapGesture { configuration.isOn.toggle() }
    }
}

