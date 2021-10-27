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
    private let lightIsOff: CGFloat = 0.8
    
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
                Button(action: {}) {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.blue)
                            .frame(width: 250, height: 80)
                            .cornerRadius(30)
                        Text("START")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                }

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
