//
//  PostsScreen.swift
//  task01
//
//  Created by Andrey on 3/7/23.
//

import SwiftUI

struct PostsScreen: View {
    @EnvironmentObject var appStorage: AppStorage;
    @ObservedObject var postsVM: PostsViewModel = .init()
    
    var body: some View {
        NavigationView {
            List(postsVM.posts) { post in
                NavigationLink(destination: PostViewScreen(post: post),
                               tag: post.id,
                               selection:  $appStorage.showPost) {
                    PostCell(post: post)
                }
            }
        }
    }
}

struct PostsScreen_Previews: PreviewProvider {
    static var previews: some View {
        PostsScreen()
    }
}
