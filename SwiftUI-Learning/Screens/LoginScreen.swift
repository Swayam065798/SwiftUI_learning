//
//  LoginScreen.swift
//  SwiftUI-Learning
//
//  Created by Swayam on 21/06/26.
//

import SwiftUI

struct LoginScreen: View {
    @State var emailId: String = ""
    @State var password = ""
    @State var appTitle = "My Own App"
    @State var firstScreenTitle = "First Screen title"
//    @Environment private var navigateToFirstScreen = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("logop")
                
                CustomLabel(labelTitle: $appTitle)
                TextField("Enter email-Id", text: $emailId)
                    .textFieldStyle(.roundedBorder)
                    .frame(height: 50)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(10)
                
                
                TextField("Enter password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .frame(height: 50)
                    .padding(10)
                
                Text(emailId)
                SampleButton(englishTitle: "Login") {
//                    navigateToFirstScreen = true
//                    FirstScreen(firstScreentitle: $firstScreenTitle)
                }
            }
//            .navigationDestination(isPresented: $navigateToFirstScreen) {
                
                FirstScreen(firstScreentitle: $firstScreenTitle)
//            }
        }
    }
    
}
