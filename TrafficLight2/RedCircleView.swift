//
//  RedCircleView.swift
//  TrafficLight2
//
//  Created by Artem Pavlov on 26.10.2021.
//

import SwiftUI

struct RedCircleView: View {
    var body: some View {
        Circle()
            .foregroundColor(.red)
            .frame(width: 130, height: 130)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
    }
}

struct RedCircleView_Previews: PreviewProvider {
    static var previews: some View {
        RedCircleView()
    }
}
