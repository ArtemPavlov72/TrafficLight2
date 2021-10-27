//
//  ContentView.swift
//  TrafficLight2
//
//  Created by Artem Pavlov on 26.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    @State private var currentLight = CurrentLight.red
    @State private var redBrightness: CGFloat = 0.8
    @State private var orangeBrightness: CGFloat = 0.8
    @State private var greenBrightness: CGFloat = 0.8
    
    @State private var buttonText = "START"
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                RedCircleView()
                    .brightness(redBrightness)
                OrangeCircleView()
                    .brightness(orangeBrightness)
                GreenCircleView()
                    .brightness(greenBrightness)
                Spacer()
                Button(action: {buttonPressed()}) {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.blue)
                            .frame(width: 250, height: 80)
                            .cornerRadius(30)
                        Text("\(buttonText)")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                }
            }
            .padding()
        }
    }
    
    func buttonPressed() {
        buttonText = "NEXT"
        switch currentLight {
        case .red:
            redBrightness = 0.0
            greenBrightness = 0.8
            currentLight = .yellow
        case .yellow:
            redBrightness = 0.8
            orangeBrightness = 0.0
            currentLight = .green
        case .green:
            redBrightness = 0.8
            orangeBrightness = 0.8
            greenBrightness = 0.0
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
