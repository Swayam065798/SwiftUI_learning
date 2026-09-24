//
//  WrapperListDemoScreen.swift
//  SwiftUI-Learning
//
//  Created by Swayam on 07/09/26.
//

import SwiftUI


struct WrapperListDemoScreen: View {
    @State private var textFString: String = ""
    var body: some View {
        VStack {
            Image("logop")
            Text("Wrappers lIst Screen")
            TextField("Enter any value", text: $textFString)
            
        }
    }
}

