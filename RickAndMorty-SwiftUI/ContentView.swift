//
//  ContentView.swift
//  RickAndMorty-SwiftUI
//
//  Created by Murat on 11.05.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    var body: some View {
        Text("Content")
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
