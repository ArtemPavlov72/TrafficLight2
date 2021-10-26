//
//  OrangeCircleView.swift
//  TrafficLight2
//
//  Created by iMac on 26.10.2021.
//

import SwiftUI

struct OrangeCircleView: View {
    var body: some View {
        Circle()
            .foregroundColor(.orange)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
    }
}

struct OrangeCircleView_Previews: PreviewProvider {
    static var previews: some View {
        OrangeCircleView()
    }
}
