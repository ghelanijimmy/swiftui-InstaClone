//
//  LoginView.swift
//  InstaClone
//
//  Created by Jimmy Ghelani on 2023-10-30.
//

import SwiftUI

struct LoginView: View {
    // MARK: - PROPERTIES
    @StateObject var loginViewController = LoginViewController()
    
    // MARK: - FUNCTIONS
    init() {
        UITextField.appearance().keyboardAppearance = .dark
    }
    // MARK: - BODY
    var body: some View {
        ZStack {
            Rectangle()
                .stroke(lineWidth: 0)
                .background(LinearGradient(stops: [.init(color: .purple, location: 0.15), .init(color: .blue, location: 0.50)], startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 20) {
                Image(.instagramLogoWhite)
                AuthTextFieldView(type: .email, title: "Email", text: $loginViewController.emailText)
                
                AuthTextFieldView(type: .password, title: "Password", text: $loginViewController.passwordText)
                
                Button(action: {}, label: {
                    Spacer()
                    Text("Log In")
                    Spacer()
                })
                .padding()
                .background(Color(red: 0.25, green: 0.15, blue: 0.85))
                
                HStack {
                    Text("Forgot your password?")
                    Button {
                        
                    } label: {
                        Text("Get help signing in")
                            .bold()
                    }
                } //: HSTACK
                .font(.system(size: 15))
                Spacer()
                HStack {
                    Text("Don't have an account?")
                    Button {
                        
                    } label: {
                        Text("Sign Up")
                            .bold()
                    }
                } //: HSTACK
                .font(.system(size: 15))
            } //: VSTACK
            .padding()
        } //: ZSTACK
        .foregroundStyle(.white)
        .navigationBarBackButtonHidden()
        .toolbarColorScheme(.dark, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        LoginView()
    }
}
