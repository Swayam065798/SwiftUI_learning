//
//  SwiftUI_LearningApp.swift
//  SwiftUI-Learning
//
//  Created by Swayam on 21/06/26.
//

import SwiftUI

// Entry point of the app in swiftui
@main
struct SwiftUI_LearningApp: App {
    @StateObject private var router = Router()
    var body: some Scene {
        WindowGroup {
//            LoginScreen()
            WrapperListDemoScreen()
        }
    }
}
