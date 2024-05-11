//
//  HomeScreen.swift
//  RickAndMorty-SwiftUI
//
//  Created by Murat on 11.05.2024.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack {
            Text(NSLocalizedString("welcome_message", comment: ""))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
