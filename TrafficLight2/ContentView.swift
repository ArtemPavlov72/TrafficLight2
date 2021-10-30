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
    
    @State private var redOpacity: CGFloat = 0.3
    @State private var orangeOpacity: CGFloat = 0.3
    @State private var greenOpacity: CGFloat = 0.3
    
    @State private var buttonText = "START"
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
              //  RedCircleView()
               //     .opacity(redOpacity)
          //      OrangeCircleView()
            //        .opacity(orangeOpacity)
           //     GreenCircleView()
           //         .opacity(greenOpacity)
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
            redOpacity = 1.0
            greenOpacity = 0.3
            currentLight = .yellow
        case .yellow:
            redOpacity = 0.3
            orangeOpacity = 1.0
            currentLight = .green
        case .green:
            orangeOpacity = 0.3
            greenOpacity = 1.0
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
