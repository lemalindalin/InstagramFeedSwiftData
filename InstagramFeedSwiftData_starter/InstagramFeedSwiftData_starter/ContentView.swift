//
//  ContentView.swift
//  InstagramFeedSwiftData_starter
//
//  Created by Franck Dalin Mbeutcha Tchuisseu on 2024-01-20.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSheet = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    ForEach(mockPosts.indices, id: \.self) { index in
                        PostView(post: mockPosts[index])
                    }
                }
            }
            .navigationTitle("Instagram")
            .navigationBarTitleDisplayMode(.large)
            .sheet(isPresented: $isShowingSheet, content: {
                AddPostSheet()
            })
            .overlay(
                Button(action: {
                    isShowingSheet = true
                }) {
                    Image(systemName: "plus")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                    .padding(.leading, 310)
                    .padding(.bottom, 7)
                    .foregroundColor(.gray),
                alignment: .bottom
            )
        }
    }
}

#Preview {
    ContentView()
}
