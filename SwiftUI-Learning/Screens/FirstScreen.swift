//
//  FirstScreen.swift
//  SwiftUI-Learning
//
//  Created by Swayam on 30/06/26.
//
import SwiftUI
struct FirstScreen: View {
    @Binding var firstScreentitle: String
    var body: some View {
        NavigationStack {
        VStack{
            CustomLabel(labelTitle: $firstScreentitle)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.horizontal)
            SampleButton(englishTitle: "Navigate to 1st") {
                SecondScreen(secondScreenTitle: $firstScreentitle)
            }
        }
    }
    }
}
