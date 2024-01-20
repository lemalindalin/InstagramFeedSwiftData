//
//  PostView.swift
//  InstagramFeedSwiftData_starter
//
//  Created by Franck Dalin Mbeutcha Tchuisseu on 2024-01-20.
//

import SwiftUI

struct PostView: View {
    let post: Post
    
    var body: some View {
        VStack {
            HStack {
                AsyncImage(url: URL(string: post.imageUrl)){
                    image in
                    image.image?.resizable()
                }
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Text(post.name)
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
                Menu {
                    Button(action: {}) {
                        Label("Update", systemImage: "pencil")
                    }
                    
                    Button(action: {}) {
                        Label("Delete", systemImage: "delete.backward.fill")
                    }
                } label: {
                    Image(systemName: "ellipsis.circle.fill")
                        .font(.title)
                }
            }
            .padding(.horizontal, 10)
            
            Spacer(minLength: 8)
            
            AsyncImage(url: URL(string: post.imageUrl)){
                image in
                image.image?.resizable()
            }
            .frame(height: 400)
            .overlay{
                Shadow()
            }
            .overlay(
                HStack(spacing: 16) {
                    Button {
                        
                    } label: {
                        Image(systemName: post.isLiked ? "heart.fill" : "heart")
                            .imageScale(.large)
                            .foregroundColor(post.isLiked ? .red : .gray)
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "bubble.right")
                            .imageScale(.large)
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                    }
                }
                    .padding(.leading, 10)
                    .padding(.bottom, 10)
                    .foregroundColor(.gray),
                alignment: .bottomLeading
            )
            .scaledToFill()
        }
    }
    
    @ViewBuilder
    func Shadow() -> some View {
        ZStack(alignment: .bottomLeading, content: {
            LinearGradient(colors: [
                .clear,
                .clear,
                .clear,
                .clear,
                .black.opacity(0.1),
                .black.opacity(0.5),
                .black.opacity(0.6),
                .black
            ], startPoint: .top, endPoint: .bottom)
        })
    }
}

#Preview {
    PostView(
        post: Post(
            name: "Alexia",
            imageUrl: "https://cdn.pixabay.com/photo/2017/05/23/17/54/summer-2337955_1280.jpg",
            isLiked: false))
}
