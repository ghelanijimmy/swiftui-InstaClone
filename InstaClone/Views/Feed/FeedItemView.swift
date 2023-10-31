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
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                }
                .tint(.black)

                Button {
                    
                } label: {
                    Image(systemName: "message")
                }
                .tint(.black)
                
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                }
                .tint(.black)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                }
                .tint(.black)
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
                Text("2 days ago")
                    .font(.system(size: 12))
                    .padding(.top, 2)
                    .foregroundStyle(.gray)
            } //: VSTACK
            .padding(.horizontal, 10)
            .padding(.top, 10)
        } //: VSTACK
    }
}

#Preview {
    FeedItemView()
}
