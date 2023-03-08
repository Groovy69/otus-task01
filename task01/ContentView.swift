//
//  ContentView.swift
//  task01
//
//  Created by Andrey on 3/7/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appStorage: AppStorage;
    
    var body: some View {
        tabView
    }
    
    var tabView: some View {
        TabView(selection: $appStorage.activeTab) {
            HomeScreen()
                .tag(0)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            PostsScreen()
                .tag(1)
                .tabItem {
                    Label("Posts", systemImage: "newspaper")
                }
            
            SettingsScreen()
                .tag(2)
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
