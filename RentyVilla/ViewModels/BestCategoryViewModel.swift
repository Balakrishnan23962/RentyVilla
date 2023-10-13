//
//  BestCategoryViewModel.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import Foundation

class BestCategoryViewModel: ObservableObject {
    @Published var bestCategories: [BestCategoryModel] = []
    let dataManager: DataManagerProtocol
    
    init(dataManager: DataManagerProtocol = DataManager.shared) {
        self.dataManager = dataManager
        getBestCategories()
    }
}

extension BestCategoryViewModel {
    func getBestCategories() {
        let result = dataManager.getBestCategory()
        switch result {
        case .success(let success):
            bestCategories.append(contentsOf: success)
        case .failure(let failure):
            print(failure.localizedDescription)
        }
    }
}
