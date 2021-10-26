//
//  RedCircleView.swift
//  TrafficLight2
//
//  Created by iMac on 26.10.2021.
//

import SwiftUI

struct RedCircleView: View {
    var body: some View {
        Circle()
            .foregroundColor(.red)
            .frame(width: 130, height: 130)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
    }
}

struct RedCircleView_Previews: PreviewProvider {
    static var previews: some View {
        RedCircleView()
    }
}
