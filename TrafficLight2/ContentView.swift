//
//  ContentView.swift
//  TrafficLight2
//
//  Created by Artem Pavlov on 26.10.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    
    @State private var redOpacity = 0.3
    @State private var orangeOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    @State private var buttonText = "START"
    
    //действия при нажатии кнопки
    func buttonPressed() {
        
        let lightIsOn = 1.0 //значение для включенной секции
        let lightIsOff = 0.3// не горит
        
        switch currentLight {
        case .red:
            redOpacity = lightIsOn
            greenOpacity = lightIsOff
            currentLight = .yellow
        case .yellow:
            redOpacity = lightIsOff
            orangeOpacity = lightIsOn
            currentLight = .green
        case .green:
            orangeOpacity = lightIsOff
            greenOpacity = lightIsOn
            currentLight = .red
        }
    }
}

//выносим body в расширение
extension ContentView {
    var body: some View {
        ZStack {
            Color(.black) //заливаем черным
                .ignoresSafeArea()
            VStack {
                CircleLight(color: .red, opacity: redOpacity) //красный
                CircleLight(color: .orange, opacity: orangeOpacity) //желтый
                CircleLight(color: .green, opacity: greenOpacity) //зеленый
                
                Spacer()
                
                ChangeButton(title: buttonText) { //передаем название кнопки
                    if buttonText == "START" {
                        buttonText = "NEXT"
                    }
                    buttonPressed() //метод по смене цветов
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
