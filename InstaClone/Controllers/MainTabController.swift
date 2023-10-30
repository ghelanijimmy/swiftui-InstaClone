//
//  MainTabController.swift
//  InstaClone
//
//  Created by Jimmy Ghelani on 2023-10-30.
//

import Foundation

enum TabSelection: String, Identifiable {
    case Feed
    case Search
    case ImageSelector
    case Notifications
    case Profile
    
    var id: String {
        self.rawValue
    }
}

class MainTabController: ObservableObject {
    
    @Published var selectedTab: TabSelection = .Feed
}
