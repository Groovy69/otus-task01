//
//  SettingsScreen.swift
//  task01
//
//  Created by Andrey on 3/7/23.
//

import SwiftUI

struct SettingsScreen: View {
    @State private var isModal: Bool = false
    
    var body: some View {
        Button {
            isModal.toggle()
        } label: {
            Text("Show Modal")
        }.sheet(isPresented: $isModal) {
            ModalScreen()
        }
        .buttonStyle(.borderedProminent)
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
