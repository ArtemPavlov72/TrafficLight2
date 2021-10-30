//
//  RedCircleView.swift
//  TrafficLight2
//
//  Created by Artem Pavlov on 26.10.2021.

//  Создаем одну View для отображения сигнала светофора, в которой меняются
//  цвет и затемнение view

import SwiftUI

struct CircleLight: View {
    
    let color: Color // цвет
    let opacity: Double // затемнение
    
    var body: some View {
        Circle()
            .frame(width: 130, height: 130) //размер круга
            .foregroundColor(color) //задаем цвет
            .opacity(opacity) // задаем затемнение
            .overlay(Circle().stroke(Color.white, lineWidth: 3)) //задаем контур
    }
}

struct CircleLight_Previews: PreviewProvider {
    static var previews: some View {
        CircleLight(color: .red, opacity: 0.7)
    }
}
