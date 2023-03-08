//
//  task01App.swift
//  task01
//
//  Created by Andrey on 3/7/23.
//

import SwiftUI

@main
struct task01App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AppStorage())
        }
    }
}

final class AppStorage: ObservableObject {
    @Published var activeTab = 0;
    @Published var showPost: Int? = nil;
}
