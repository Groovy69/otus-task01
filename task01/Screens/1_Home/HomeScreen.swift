//
//  HomeScreen.swift
//  task01
//
//  Created by Andrey on 3/7/23.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var appStorage: AppStorage;
    
    var body: some View {
        VStack(spacing: 20) {
            TagStackRepresentable()
                .frame(width: 300, height: 30, alignment: .center)
            
            addButton(postId: 3, title: "Open post #3")
            addButton(postId: 11, title: "Open post #11")
            addButton(postId: 14, title: "Open post #14")
        }
    }
}

extension HomeScreen {
    func addButton(postId: Int, title: String) -> some View {
        Button {
            appStorage.activeTab = 1;
            appStorage.showPost = postId;
        } label: {
            Text(title)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .foregroundColor(.white)
        .background(.cyan)
        .cornerRadius(10)
    }
}
