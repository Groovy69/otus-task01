//
//  Post.swift
//  task01
//
//  Created by Andrey on 3/7/23.
//

import Foundation

struct Post {
    let id: Int
    let title: String
    let image: String
    let content: String
}

// MARK: - Identifiable
extension Post: Identifiable {
}

// MARK: - Mock
extension Post {
    static var mock: Post {
        Post(id: 1, title: "hello", image: "⚽️",content: "world")
    }
}
