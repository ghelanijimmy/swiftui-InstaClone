//
//  SearchView.swift
//  InstaClone
//
//  Created by Jimmy Ghelani on 2023-10-30.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack {
            Text("Search")
        }
    }
}

#Preview {
    TabView {
        SearchView()
            .tabItem {
                Label("Search", systemImage: "magnifyingglass")
            }
    }
}
