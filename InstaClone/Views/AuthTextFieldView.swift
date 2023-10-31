//
//  AuthTextFieldExtension.swift
//  InstaClone
//
//  Created by Jimmy Ghelani on 2023-10-31.
//

import Foundation
import SwiftUI

enum AuthFieldType {
    case email
    case password
}

struct AuthTextFieldView: View {
    // MARK: - PROPERTIES
    let type: AuthFieldType
    let title: String
    @Binding var text: String
    
    // MARK: - BODY
    var body: some View {
        if type == .email {
            TextField(title, text: $text, prompt:
                        Text(title)
                .foregroundStyle(.white.opacity(0.4))
            )
            .padding()
            .background(.white.opacity(0.2))
            .keyboardType(.emailAddress)
        } else if type == .password {
            SecureField(title, text: $text, prompt:
                        Text(title)
                .foregroundStyle(.white.opacity(0.4))
            )
            .padding()
            .background(.white.opacity(0.2))
        }
    }
}
