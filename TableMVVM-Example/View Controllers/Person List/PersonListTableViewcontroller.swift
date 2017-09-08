//
//  PersonListTableViewcontroller.swift
//  TableMVVM-Example
//
//  Created by Flávio Silvério on 08/09/17.
//  Copyright © 2017 Flávio Silvério. All rights reserved.
//

import UIKit

class PersonListTableViewcontroller: UITableViewController {

    var viewModel : PersonListViewModel!

    init(with style: UITableViewStyle, and vm:  PersonListViewModel) {
        
        super.init(style: style)
        viewModel = vm
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

}

extension PersonListTableViewcontroller {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(in: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return PersonListCell(with: viewModel.viewModelForCell(at: indexPath.row))
    }
    
}
