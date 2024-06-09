//
//  TabbedItems.swift
//  RickAndMorty-SwiftUI
//
//  Created by Murat on 11.05.2024.
//
import Foundation

enum TabbedItems: Int, CaseIterable{
    case home = 0
    case favorite
    case profile
    
    var title: String{
        switch self {
        case .home:
            return NSLocalizedString("Home", comment: "")
        case .favorite:
            return NSLocalizedString("Favourite", comment: "")
        case .profile:
            return NSLocalizedString("Profile", comment: "")
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
