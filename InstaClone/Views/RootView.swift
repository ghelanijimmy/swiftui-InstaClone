//
//  RootView.swift
//  InstaClone
//
//  Created by Jimmy Ghelani on 2023-10-30.
//

import SwiftUI

struct RootView: View {
    // MARK: - PROPERTIES
    @State var isLoggedIn: Bool = false
    
    // MARK: - FUNCTIONS
    
    // MARK: - BODY
    var body: some View {
        if isLoggedIn {
            MainAppView()
        } else {
            NavigationStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            } //: NAVIGATION STACK
        } //: CONDITIONAL
    }
}

#Preview {
    RootView()
}
