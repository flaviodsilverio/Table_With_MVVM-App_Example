//
//  AppCoordinator.swift
//  TableMVVM-Example
//
//  Created by Flávio Silvério on 08/09/17.
//  Copyright © 2017 Flávio Silvério. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator {
    
    let window : UIWindow!
    
    let navController = UINavigationController()
    
    init(with w: UIWindow) {
        
        window = w

        let vm = PersonListViewModel(with: generatePeople())
        
        let vc = PersonListTableViewcontroller(with: .plain, and: vm)
        navController.pushViewController(vc, animated: true)
        
        window.rootViewController = navController
        window.makeKeyAndVisible()
        
    }
    
}

//This shouldn't exist, only for testing purposes
extension AppCoordinator {
    
    func generatePeople() -> [Person] {
        
        var people = [Person]()
        
        for _ in 0...10 {
            
            people.append(Person(name: "asdasd", age: 20, address: Address(country: "uk", street: "sd", city: "sd")))
            
        }
        
        return people
    }
    
}
