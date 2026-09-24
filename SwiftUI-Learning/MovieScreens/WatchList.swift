//
//  WatchList.swift
//  SwiftUI-Learning
//
//  Created by Swayam on 01/07/26.
//

import SwiftUI

struct MoviesWatchList: View {
    @State private var searchText: String = ""
    @State private var showOnlyWatched: Bool = false
    
    var body: some View {
        NavigationStack {
            
            TextField("Search movies", text: $searchText)
                .padding()
                .background(Color(.systemGray6))
            
            Toggle("Show only watched", isOn: $showOnlyWatched)
                .padding(.horizontal)
        }
    }
}
