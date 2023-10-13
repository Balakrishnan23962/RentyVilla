//
//  DataManager.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import Foundation

protocol DataManagerProtocol {
    func getImageDetails() -> Result<[ImageDetailsModel], Error>
}

class DataManager {
    static let shared = DataManager()
    private let imageMock = ImageDetailsMockData()
}

extension DataManager: DataManagerProtocol {
    func getImageDetails() -> Result<[ImageDetailsModel], Error> {
        var result: Result<[ImageDetailsModel], Error>
        let mockResult = imageMock.getImageDetails()
        switch mockResult {
        case .success(let success):
            result = .success(success)
        case .failure(let failure):
            result = .failure(failure)
        }
        return result
    }
}
