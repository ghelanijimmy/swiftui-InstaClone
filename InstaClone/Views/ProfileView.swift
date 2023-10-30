//
//  ProfileView.swift
//  InstaClone
//
//  Created by Jimmy Ghelani on 2023-10-30.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            Text("Profile")
        }
    }
}

#Preview {
    TabView {
        ProfileView()
            .tabItem {
                Label("Profile", systemImage: "person")
            }
    }
}
