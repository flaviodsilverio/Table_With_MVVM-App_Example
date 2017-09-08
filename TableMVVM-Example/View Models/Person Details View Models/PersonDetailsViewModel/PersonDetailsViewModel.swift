//
//  PersonDetailsViewModel.swift
//  TableMVVM-Example
//
//  Created by Flávio Silvério on 07/09/17.
//  Copyright © 2017 Flávio Silvério. All rights reserved.
//

import Foundation

struct PersonDetailsViewModel {

    var childViewModels = [PersonDetailsSectionViewModel]()
    
    init(with person: Person) {
    
        childViewModels.append(PersonDetailsSectionViewModel(
            childViewModels: [
            PersonDetailsCellViewModel(withTitle: "Name", andDetail: person.name),
            PersonDetailsCellViewModel(withTitle: "Age", andDetail: person.age.description)
            ],
            sectionTitle: "General Info"))
        
        childViewModels.append(PersonDetailsSectionViewModel(childViewModels: [
            PersonDetailsCellViewModel(withTitle: "Country", andDetail: person.address?.country),
            PersonDetailsCellViewModel(withTitle: "City", andDetail: person.address?.city)
            ],
                                                             sectionTitle: "Addresses"))
        
    }
    
    var numberOfSections : Int {
        return childViewModels.count
    }
    
    func numberOfRows(in section: Int) -> Int {
        return childViewModels[section].numberOfRows
    }
    
    func title(for section: Int) -> String? {
        return childViewModels[section].sectionTitle
    }
    
}
