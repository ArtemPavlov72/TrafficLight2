//
//  OrangeCircleView.swift
//  TrafficLight2
//
//  Created by Artem Pavlov on 26.10.2021.
//

import SwiftUI

struct OrangeCircleView: View {
    var body: some View {
        Circle()
            .foregroundColor(.orange)
            .frame(width: 130, height: 130)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
    }
}

struct OrangeCircleView_Previews: PreviewProvider {
    static var previews: some View {
        OrangeCircleView()
    }
}
