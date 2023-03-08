//
//  PostsViewModel.swift
//  task01
//
//  Created by Andrey on 3/7/23.
//

import Foundation

final class PostsViewModel: ObservableObject {
    @Published var postSelection: Int? = nil;
    
    @Published private(set) var posts: [Post] = [
        Post(id:1, title: "post #1", image:"⚽️", content: "something about post #1"),
        Post(id:2, title: "post #2", image:"🏀", content: "something about post #2"),
        Post(id:3, title: "post #3", image:"🏈", content: "something about post #3"),
        Post(id:4, title: "post #4", image:"🏓", content: "something about post #4"),
        Post(id:5, title: "post #5", image:"🥎", content: "something about post #5"),
        Post(id:6, title: "post #6", image:"🏐", content: "something about post #6"),
        Post(id:7, title: "post #7", image:"🎳", content: "something about post #7"),
        Post(id:8, title: "post #8", image:"🥏", content: "something about post #8"),
        Post(id:9, title: "post #9", image:"⚾️", content: "something about post #9"),
        Post(id:10, title: "post #10", image:"🎱", content: "something about post #10"),
        Post(id:11, title: "post #11", image:"🪀", content: "something about post #11"),
        Post(id:12, title: "post #12", image:"🏒", content: "something about post #12"),
        Post(id:13, title: "post #13", image:"🏸", content: "something about post #13"),
        Post(id:14, title: "post #14", image:"🏑", content: "something about post #14"),
        Post(id:15, title: "post #15", image:"🥍", content: "something about post #15"),
        Post(id:16, title: "post #16", image:"🤿", content: "something about post #16"),
        Post(id:18, title: "post #17", image:"🪁", content: "something about post #17"),
    ]
}
