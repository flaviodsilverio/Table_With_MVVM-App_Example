//
//  PersonDetailsCellViewModel.swift
//  TableMVVM-Example
//
//  Created by Flávio Silvério on 07/09/17.
//  Copyright © 2017 Flávio Silvério. All rights reserved.
//

import Foundation

struct PersonDetailsCellViewModel {
    
    var cellDetail : String?
    var cellTitle : String!
    
    init(withTitle t: String?, andDetail d: String?) {
        
        cellTitle = t
        cellDetail = d
        
    }
    
}
