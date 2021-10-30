//
//  ChangeButton.swift
//  TrafficLight2
//
//  Created by Artem Pavlov on 30.10.2021.
//
// Выносим кнопку в отдельный View

import SwiftUI

struct ChangeButton: View {
    
    let title: String //текст кнопки
    let action:() -> Void //задаем экшн кнопки через замыкание
    
    var body: some View {
        Button(action: action) { //добавляем кнопку
            Text(title)
                .font(.title) //стиль
                .fontWeight(.bold) //толстый шрифт
                .foregroundColor(Color.white) // цвет текста
        }
        .padding() //отступы
        .frame(width: 200, height: 60)
        .background(Color.blue) //заливаем синим цветом
        .cornerRadius(20) //скругляем
        .overlay( 
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}

struct ChangeButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeButton(title: "START", action: {})
    }
}
