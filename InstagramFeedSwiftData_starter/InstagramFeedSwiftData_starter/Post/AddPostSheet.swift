//
//  AddPostSheet.swift
//  InstagramFeedSwiftData_starter
//
//  Created by Franck Dalin Mbeutcha Tchuisseu on 2024-01-20.
//

import SwiftUI

struct AddPostSheet: View {
    @Environment(\.dismiss) private var dismiss
    
    @State private var name: String = ""
    @State private var imageUrl: String = ""
    @State private var isLiked: Bool = false
    
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                TextField("imageUrl", text: $imageUrl)
            }
            .navigationTitle("New Post")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button ("Cancel") { dismiss() }
                }
                
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button ("Save") {
                        let post = Post(name: name, imageUrl: imageUrl, isLiked: isLiked)
                        // Insert Post
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AddPostSheet()
}
