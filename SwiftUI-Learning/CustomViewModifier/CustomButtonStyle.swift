//
//  CustomButtonStyle.swift
//  SwiftUI-Learning
//
//  Created by Swayam on 25/09/26.
//

import SwiftUI
import Foundation


struct ButtonModifierStyle: ButtonStyle {
    
    let scaledAmount: CGFloat
    
    init(scaledAmount: CGFloat = 0.9) {
        self.scaledAmount = scaledAmount
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            .opacity(configuration.isPressed ? 0.8 : 1.0)
    }
}

struct CustomButtonStyle: View {
    var body: some View {
        VStack {
            Button(action: {
                
            }, label: {
                Text("Click Me !!")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(15)
                    .shadow(radius: 15)
                
            })
//            prevents the button to fade away while clicking
            .buttonStyle(ButtonModifierStyle())
            .padding(20)
        }
    }
}

#Preview {
    CustomButtonStyle()
}
