//
//  NotificationsView.swift
//  InstaClone
//
//  Created by Jimmy Ghelani on 2023-10-30.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            Text("Notifications")
        }
    }
}

#Preview {
    TabView {
        NotificationsView()
            .tabItem {
                Label("Notifications", systemImage: "message")
            }
    }
}
