//
//  imageDetailsMockData.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import Foundation

class ImageDetailsMockData {

    var imageDetails: [ImageDetailsModel]?
    var bestCategoryDetails: [BestCategoryModel]?
    var imageDetails1: [ImageDetailsModel] = [
        ImageDetailsModel(houseName: "DreamsVilla House",streetName: "2/29", distance: "1.2 km", image: "house1"),
        ImageDetailsModel(houseName: "Balakrishna House",streetName: "Kunnathur", distance: "2.5 km", image: "house2"),
        ImageDetailsModel(houseName: "Surya House",streetName: "Gandhipuram", distance: "3.5 km", image: "house1")
    ]
    var bestCategory: [BestCategoryModel] = [
        BestCategoryModel(name: "Orchard House", image: "house1", rent: "Rp.2,50,000 / Year", bedRooms: "4", bathRooms: "4"),
        BestCategoryModel(name: "Bala House", image: "house2", rent: "Rp.2,50,000 / Year", bedRooms: "4", bathRooms: "4"),
        BestCategoryModel(name: "Vimal House", image: "house1", rent: "Rp.3,00,000 / Year", bedRooms: "6", bathRooms: "5"),
        BestCategoryModel(name: "Naveen House", image: "house2", rent: "Rp.1,80,000 / Year", bedRooms: "5", bathRooms: "4"),
        BestCategoryModel(name: "Kishore House", image: "house1", rent: "Rp.1,50,000 / Year", bedRooms: "3", bathRooms: "3")
    ]
    init() {
        self.imageDetails = imageDetails1
    }
}

extension ImageDetailsMockData {
    func getImageDetails() -> Result<[ImageDetailsModel], Error> {
        return .success(imageDetails!)
    }
    
    func getBestHouse() -> Result<[BestCategoryModel], Error> {
        return .success(bestCategory)
    }
}
