//
//  PersonDetailsViewModel.swift
//  TableMVVM-Example
//
//  Created by Flávio Silvério on 07/09/17.
//  Copyright © 2017 Flávio Silvério. All rights reserved.
//

import Foundation

struct PersonDetailsViewModel {

    var childViewModels : [PersonDetailsSectionViewModel]!
    
    init(with person: Person) {
    
    }
    
    var numberOfSections : Int {
        return childViewModels.count
    }
    
    func numberOfRows(in section: Int) -> Int {
        return childViewModels[section].numberOfRows
    }
    
}
