//
//  PersonListViewModel.swift
//  TableMVVM-Example
//
//  Created by Flávio Silvério on 08/09/17.
//  Copyright © 2017 Flávio Silvério. All rights reserved.
//

import Foundation

struct PersonListViewModel {
    
    var childViewModels = [PersonListCellViewModel]()
    
    init(with people: [Person]){
        
        people.forEach({ person in
            childViewModels.append(PersonListCellViewModel(with: person))
        })
        
    }
    
    var numberOfSections : Int {
        return 1
    }
    
    func numberOfRows(in section: Int) -> Int {
        return childViewModels.count
    }
    
    func viewModelForCell(at index: Int) -> PersonListCellViewModel{
        return childViewModels[index]
    }
}
