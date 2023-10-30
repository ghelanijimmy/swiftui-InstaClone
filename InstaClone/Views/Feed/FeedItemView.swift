//
//  FeedItemView.swift
//  InstaClone
//
//  Created by Jimmy Ghelani on 2023-10-30.
//

import SwiftUI

struct FeedItemView: View {
    var body: some View {
        LazyVStack(alignment: .leading) {
            HStack {
                Button(action: {
                    // MARK: - GO TO PROFILE
                }, label: {
                    Circle()
                        .frame(width: 40, height: 40)
                    Text("name")
                })
                .foregroundStyle(.black)
                Spacer()
                Image(systemName: "ellipsis")
            } //: HSTACK
            .padding(.horizontal, 10)
            Image(systemName: "heart")
                .resizable()
                .frame(height: 350)
                .background(.teal)
            HStack {
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            } //: HSTACK
            .padding([.horizontal, .top], 10)
            VStack(alignment: .leading) {
                Text("1 like")
                    .font(.system(size: 12))
                HStack {
                    Text("Joker")
                        .bold()
                    Text("Venom")
                } //: HSTACK
                .padding(.top, 2)
                .font(.system(size: 12))
            } //: VSTACK
            .padding(.horizontal, 10)
            .padding(.top, 10)
        } //: VSTACK
    }
}

#Preview {
    FeedItemView()
}
