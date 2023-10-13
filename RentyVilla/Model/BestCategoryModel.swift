//
//  BestCategoryModel.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import Foundation

struct BestCategoryModel: Codable, Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var rent: String
    var bedRooms: String
    var bathRooms: String
    
    enum CodingKeys: CodingKey {
        case id
        case name
        case image
        case rent
        case bedRooms
        case bathRooms
    }
}
