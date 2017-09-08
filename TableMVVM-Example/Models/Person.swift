//
//  Person.swift
//  TableMVVM-Example
//
//  Created by Flávio Silvério on 07/09/17.
//  Copyright © 2017 Flávio Silvério. All rights reserved.
//

import Foundation

struct Person {
    
    var name : String
    var age : Int
    
    var address : Address?
}

struct Address {
    
    var country : String?
    var street : String?
    var city : String?
}
