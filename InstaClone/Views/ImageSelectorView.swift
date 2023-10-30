//
//  ImageSelectorView.swift
//  InstaClone
//
//  Created by Jimmy Ghelani on 2023-10-30.
//

import SwiftUI

struct ImageSelectorView: View {
    var body: some View {
        NavigationStack {
            Text("Upload")
        }
    }
}

#Preview {
    TabView {
        ImageSelectorView()
            .tabItem {
                Label("Upload", systemImage: "photo.on.rectangle")
            }
    }
}
