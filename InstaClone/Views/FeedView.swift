//
//  FeedView.swift
//  InstaClone
//
//  Created by Jimmy Ghelani on 2023-10-30.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            Text("Feed")
        }
    }
}

#Preview {
    TabView {
        FeedView()
            .tabItem {
                Label("Feed", systemImage: "house")
            }
    }
}
