//
//  PersonDetailsSectionViewModel.swift
//  TableMVVM-Example
//
//  Created by Flávio Silvério on 07/09/17.
//  Copyright © 2017 Flávio Silvério. All rights reserved.
//

import Foundation

struct PersonDetailsSectionViewModel {
    
    var childViewModels : [PersonDetailsCellViewModel]!
    var sectionTitle : String?
    
    var numberOfRows : Int {
        return childViewModels.count
    }
    
    func viewModelForCell(at index: Int) -> PersonDetailsCellViewModel {
        return childViewModels[index]
    }
    
}
