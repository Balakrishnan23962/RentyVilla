//
//  ImageDetailsViewModel.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import Foundation
import Observation

class ImageDetailsViewModel: ObservableObject {
    @Published var imageDetails: [ImageDetailsModel] = []
    let dataManager: DataManagerProtocol
    
    init(dataManager: DataManagerProtocol = DataManager.shared) {
        self.dataManager = dataManager
    }
}

extension ImageDetailsViewModel {
    func getImage() {
        let result = dataManager.getImageDetails()
        switch result {
        case .success(let success):
            imageDetails.removeAll(keepingCapacity: false)
            imageDetails.append(contentsOf: success)
        case .failure(let failure):
            print(failure.localizedDescription)
        }
    }
}
