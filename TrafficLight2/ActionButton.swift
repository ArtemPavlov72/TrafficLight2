//
//  ActionButton.swift
//  TrafficLight2
//
//  Created by iMac on 26.10.2021.
//

import SwiftUI

struct ActionButton: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.blue)
            .frame(width: 250, height: 80)
            .cornerRadius(30)
            .clipShape(Rectangle())
            .overlay(Rectangle()
                        .stroke(Color.white, lineWidth: 8)
                        .cornerRadius(30)
                        )
           
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton()
    }
}
