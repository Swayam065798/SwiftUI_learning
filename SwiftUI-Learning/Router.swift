//
//  Router.swift
//  SwiftUI-Learning
//
//  Created by Swayam on 30/06/26.
//

import Foundation
import SwiftUI
import Combine

final class Router: ObservableObject {
    
    enum AuthFlow: Codable, Hashable {
        case login
        case createAccount
        case profile
        case forgotPassword
        case emailSent
    }
    @Published var path = NavigationPath()
}
