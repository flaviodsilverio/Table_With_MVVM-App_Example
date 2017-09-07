//
//  PersonDetailsViewController.swift
//  TableMVVM-Example
//
//  Created by Flávio Silvério on 07/09/17.
//  Copyright © 2017 Flávio Silvério. All rights reserved.
//

import UIKit

class PersonDetailsViewController: UITableViewController {

    var viewModel : PersonDetailsViewModel!
    
    init(with style: UITableViewStyle, and vm: PersonDetailsViewModel) {
        
        super.init(style: style)
        
        viewModel = vm
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}

