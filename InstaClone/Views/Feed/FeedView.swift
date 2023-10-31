//
//  FeedView.swift
//  InstaClone
//
//  Created by Jimmy Ghelani on 2023-10-30.
//

import SwiftUI

struct FeedView: View {
    // MARK: - PROPERTIES
    
    // MARK: - FUNCTIONS
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                ForEach(0..<5) { _ in
                    FeedItemView()
                        .padding(.bottom, 10)
                }
            }
        } //: NAVIGATION STACK
    }
}

#Preview {
    TabView {
        FeedView()
            .tabItem {
                Label("Feed", systemImage: "house")
            }
    }
    .tint(.black)
}
