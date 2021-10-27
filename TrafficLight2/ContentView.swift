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
    
    @State private var redBrightness: CGFloat = 0.5
    @State private var orangeBrightness: CGFloat = 0.6
    @State private var greenBrightness: CGFloat = 0.5
    
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
                    buttonStyle
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
            greenBrightness = 0.5
            currentLight = .yellow
        case .yellow:
            redBrightness = 0.5
            orangeBrightness = 0.0
            currentLight = .green
        case .green:
            orangeBrightness = 0.6
            greenBrightness = 0.0
            currentLight = .red
        }
    }
    
    private var buttonStyle: some View {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
