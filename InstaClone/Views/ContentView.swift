//
//  ContentView.swift
//  InstaClone
//
//  Created by Jimmy Ghelani on 2023-10-30.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @StateObject var mainTab = MainTabController()
    
    // MARK: - FUNCTIONS
    
    // MARK: - BODY
    var body: some View {
        TabView(selection: $mainTab.selectedTab) {
            FeedView()
                .tabItem {
                    Label("Feed", systemImage: mainTab.selectedTab == .Feed ? "house.fill" : "house")
                }
                .tag(TabSelection.Feed)
            SearchView()
                .tabItem {
                    Label("Search", systemImage: mainTab.selectedTab == .Search ? "magnifyingglass.circle.fill" : "magnifyingglass")
                }
                .tag(TabSelection.Search)
            ImageSelectorView()
                .tabItem {
                    Label("Upload", systemImage: mainTab.selectedTab == .ImageSelector ? "photo.fill.on.rectangle.fill" : "photo.on.rectangle")
                }
                .tag(TabSelection.ImageSelector)
            NotificationsView()
                .tabItem {
                    Label("Notifications", systemImage: mainTab.selectedTab == .Notifications ? "message.fill" : "message")
                }
                .tag(TabSelection.Notifications)
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: mainTab.selectedTab == .Profile ? "person.fill" : "person")
                }
                .tag(TabSelection.Profile)
        } //: TAB VIEW
        .tint(.black)
    }
}

#Preview {
    ContentView()
}
