//
//  PostViewScreen.swift
//  task01
//
//  Created by Andrey on 3/8/23.
//

import SwiftUI

struct PostViewScreen: View {
    let post: Post
    
    var body: some View {
        VStack {
            Text(post.title)
                .bold()
            
            Divider()
            
            Text(post.image)
                .font(.system(size: 128))
            
            Text(post.content)
            
            Spacer()
        }
        .padding(25)
    }
}

struct PostViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        PostViewScreen(post: .mock)
    }
}
