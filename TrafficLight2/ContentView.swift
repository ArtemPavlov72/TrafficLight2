//
//  ContentView.swift
//  TrafficLight2
//
//  Created by iMac on 26.10.2021.
//

import SwiftUI

struct ContentView: View {
  
    enum CurrentLight {
        case red, yellow, green
    }
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 0.0
    private let lightIsOff: CGFloat = 0.7
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                RedCircleView()
                    .brightness(lightIsOff)
                OrangeCircleView()
                    .brightness(lightIsOff)
                GreenCircleView()
                    .brightness(lightIsOff)
                Spacer()
                ActionButton()
                
                
                
            }
            .padding()
        }
    }
    
    func buttonPressed() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
