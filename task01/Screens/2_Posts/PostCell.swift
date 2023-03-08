//
//  PostCell.swift
//  task01
//
//  Created by Andrey on 3/7/23.
//

import SwiftUI

struct PostCell: View {
    let post: Post
    
    var body: some View {
        HStack(spacing: 25) {
            Text(post.image);
            Text(post.title);
        }
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell(post: .mock)
    }
}
