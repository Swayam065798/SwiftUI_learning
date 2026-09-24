//
//  SecondScreen.swift
//  SwiftUI-Learning
//
//  Created by Swayam on 30/06/26.
//

import SwiftUI

struct SecondScreen: View {
    @Binding var secondScreenTitle: String
    var body: some View {
        VStack {
            CustomLabel(labelTitle: $secondScreenTitle)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.horizontal)
            SampleButton(englishTitle: "Navigate to 1st") {
                SecondScreen(secondScreenTitle: $secondScreenTitle)
            }
        }
    }
}
