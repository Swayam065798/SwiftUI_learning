//
//  ContentView.swift
//  SwiftUI-Learning
//
//  Created by Swayam on 21/06/26.
//

import SwiftUI

struct ContentView: View {
    // Tetxfield never accepts an optional string
    @State private var nameText: String = ""
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            TextField("Enter name", text: $nameText)
                .textFieldStyle(.roundedBorder)
            Text("Name: \(nameText)")
            // Example of binding
            CustomLabel(labelTitle: $nameText)
            Button("Subit") {
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
