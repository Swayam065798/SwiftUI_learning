//
//  WatchListVM.swift
//  SwiftUI-Learning
//
//  Created by Swayam on 01/07/26.
//
import Combine
import SwiftUI

// ObservableObject comes from combine
// Published comes from combine
class WatchListVM: ObservableObject {
    @Published var name = "Swayam"
    
    func changeName() {
        name = "Lipun"
    }
}
