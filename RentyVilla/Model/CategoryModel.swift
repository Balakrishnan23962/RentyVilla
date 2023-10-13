//
//  CategoryModel.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import Foundation

enum CategoryModel: String, CaseIterable {
    case house
    case apartment
    case hotel
    case villa
    case cottage
    
    var title: String {
        switch self {
        case .house:
            return "House"
        case .apartment:
            return "Apartment"
        case .hotel:
            return "Hotel"
        case .villa:
            return "Villa"
        case .cottage:
            return "Cottage"
        }
    }
}
