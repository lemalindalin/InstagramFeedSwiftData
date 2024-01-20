//
//  Post.swift
//  InstagramFeedSwiftData_starter
//
//  Created by Franck Dalin Mbeutcha Tchuisseu on 2024-01-20.
//

import Foundation

class Post {
    var name: String
    var imageUrl: String
    var isLiked: Bool
    
    init(name: String, imageUrl: String, isLiked: Bool) {
        self.name = name
        self.imageUrl = imageUrl
        self.isLiked = isLiked
    }
}

var mockPosts: [Post] = [
    Post(name: "Diana", imageUrl: "https://cdn.pixabay.com/photo/2017/05/23/17/54/summer-2337955_1280.jpg", isLiked: true),
    Post(name: "Alexa", imageUrl: "https://cdn.pixabay.com/photo/2015/03/17/11/36/couple-677585_1280.jpg", isLiked: false),
    Post(name: "John", imageUrl: "https://cdn.pixabay.com/photo/2017/07/31/21/04/people-2561053_1280.jpg", isLiked: true),
    Post(name: "Alex", imageUrl: "https://cdn.pixabay.com/photo/2017/11/03/18/26/man-2915187_1280.jpg", isLiked: false),
]
