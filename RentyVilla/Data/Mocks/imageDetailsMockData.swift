//
//  imageDetailsMockData.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import Foundation

class ImageDetailsMockData {

    var imageDetails: [ImageDetailsModel]?
    var imageDetails1: [ImageDetailsModel] = [
        ImageDetailsModel(houseName: "DreamsVilla House",streetName: "2/29", distance: "1.2 km", image: "house1"),
        ImageDetailsModel(houseName: "Balakrishna House",streetName: "Kunnathur", distance: "2.5 km", image: "house2"),
        ImageDetailsModel(houseName: "Surya House",streetName: "Gandhipuram", distance: "3.5 km", image: "house1")
    ]
    init() {
        self.imageDetails = imageDetails1
    }
}

extension ImageDetailsMockData {
    func getImageDetails() -> Result<[ImageDetailsModel], Error> {
        return .success(imageDetails!)
    }
}
