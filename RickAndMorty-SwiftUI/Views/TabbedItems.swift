//
//  TabbedItems.swift
//  RickAndMorty-SwiftUI
//
//  Created by Murat on 11.05.2024.
//

enum TabbedItems: Int, CaseIterable{
    case home = 0
    case favorite
    case profile
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .favorite:
            return "Favorite"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "house"
        case .favorite:
            return "heart"
        case .profile:
            return "person"
        }
    }
}
