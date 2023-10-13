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
    case bookmark
    case notificaiton
    case message
    case settings
    case help
    case logOut
    var id: SideMenuModel { return self }
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .profile:
            return "Profile"
        case .nearby:
            return "Nearby"
        case .bookmark:
            return "Bookmark"
        case .notificaiton:
            return "Notification"
        case .message:
            return "Message"
        case .settings:
            return "Setting"
        case .help:
            return "Help"
        case .logOut:
            return "Logout"
        }
    }
    
    var image: String {
        switch self {
        case .home:
            return "house"
        case .profile:
            return "person"
        case .nearby:
            return "location"
        case .bookmark:
            return "bookmark"
        case .notificaiton:
            return "bell"
        case .message:
            return "message"
        case .settings:
            return "gearshape"
        case .help:
            return "questionmark.circle"
        case .logOut:
            return "power"
        }
    }
    
}
