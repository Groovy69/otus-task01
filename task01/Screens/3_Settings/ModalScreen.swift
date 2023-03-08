//
//  ModalScreen.swift
//  task01
//
//  Created by Andrey on 3/8/23.
//

import SwiftUI

struct ModalScreen: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, World!")
            
            Button {
                dismiss()
            } label: {
                Text("Close")
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

struct ModalScreen_Previews: PreviewProvider {
    static var previews: some View {
        ModalScreen()
    }
}
