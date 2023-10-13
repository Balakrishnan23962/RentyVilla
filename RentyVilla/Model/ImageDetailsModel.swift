//
//  ImageDetailsModel.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import Foundation

struct ImageDetailsModel: Codable, Identifiable {
    var id = UUID()
    var houseName: String
    var streetName: String?
    var distance: String
    var image: String
    
    enum CodingKeys: CodingKey {
        case id
        case houseName
        case streetName
        case distance
        case image
    }
}
