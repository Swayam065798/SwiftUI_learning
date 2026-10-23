//
//  File.swift
//  SwiftUI-Learning
//
//  Created by Swayam on 25/09/26.
//

import Foundation
import SwiftUI

struct DefaultModifier: ViewModifier {
    // Custom parameter
    let bgColor: Color
    
    func body(content: Content) -> some View {
        // returning content
        content
            
                            .foregroundColor(.white)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(bgColor)
                            .cornerRadius(10)
                            .shadow(radius: 10)
    }
}

// MARK: by creating the extension we will avaoide the .modifer
extension View {
    func withDefaultTextFormatting(bgColor: Color = .blue) -> some View {
        modifier(DefaultModifier(bgColor: bgColor))
    }
}

struct CustomViewModifier: View {
    // Custom parameter
//    let bgColor: Color
    
    var body: some View {
        VStack (spacing: 10) {
            Text("Hello, World!")
                .font(.headline)
                .withDefaultTextFormatting(bgColor: .blue)
//
            
            Text("Hello, World!")
                .font(.subheadline)
                .withDefaultTextFormatting(bgColor: .red)
            
            Text("Hello, World!")
                .font(.title)
                .withDefaultTextFormatting(bgColor: .orange)
            
        }
        .padding()
    }
}

#Preview {
    CustomViewModifier()
}
