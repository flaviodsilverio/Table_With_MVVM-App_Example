//
//  PersonListCell.swift
//  TableMVVM-Example
//
//  Created by Flávio Silvério on 08/09/17.
//  Copyright © 2017 Flávio Silvério. All rights reserved.
//

import UIKit

class PersonListCell: UITableViewCell {

    init(with vm: PersonListCellViewModel) {
        
        super.init(style: .default, reuseIdentifier: "listCell")
        
        textLabel?.text = vm.text
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
