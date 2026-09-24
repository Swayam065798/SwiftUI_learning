//
//  ReusableComponent.swift
//  SwiftUI-Learning
//
//  Created by Swayam on 21/06/26.
//
import SwiftUI

struct SampleButton: View {
    let englishTitle: String
//    let frenchTitle: String
    let action: () -> Void
    
    var body: some View {
        
            Button(englishTitle, action: action)
            .frame(width: 300, height: 50)
                .padding(.horizontal, 20)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            
//            Button(frenchTitle) { }
//                .frame(maxWidth: .infinity)
//                .padding()
//                .background(Color.blue)
//                .foregroundColor(.white)
//                .cornerRadius(8)
            
            
        
    }
}

struct CustomLabel: View {
    @Binding var labelTitle: String
    var body: some View {
        Text(labelTitle)
            .frame(maxWidth: .infinity, alignment: .center)
    }
    
}
