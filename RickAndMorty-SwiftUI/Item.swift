//
//  Item.swift
//  RickAndMorty-SwiftUI
//
//  Created by Murat on 11.05.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
