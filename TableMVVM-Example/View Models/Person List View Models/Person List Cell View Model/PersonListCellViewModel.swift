//
//  PersonListCellViewModel.swift
//  TableMVVM-Example
//
//  Created by Flávio Silvério on 08/09/17.
//  Copyright © 2017 Flávio Silvério. All rights reserved.
//

import Foundation

//this is a simplifictaion of the highest order, it should be wya more complex

struct PersonListCellViewModel {
    
    internal var person : Person! {
        didSet{
            text = person.name
        }
    }
    
    var text : String!

    init(with p: Person){
        person = p
    }
}
