//
//  SideMenuModel.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 11/10/23.
//

import Foundation

enum SideMenuModel: String, CaseIterable, Identifiable {
    case home
    case profile
    case nearby
    var id: SideMenuModel { return self }
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .profile:
            return "Profile"
        case .nearby:
            return "Nearby"
        }
    }
    
    var imageNotSelected: String {
        switch self {
        case .home:
            return "homeWhite"
        case .profile:
            return "profileWhite"
        case .nearby:
            return "locationWhite"
        }
    }
    
    var imageSelected: String {
        switch self {
        case .home:
            return "homeBlue"
        case .profile:
            return "profileBlue"
        case .nearby:
            return "locationBlue"
        }
    }
}
