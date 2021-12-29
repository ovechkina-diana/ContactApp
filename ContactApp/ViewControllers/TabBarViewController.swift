//
//  TabBarViewController.swift
//  ContactApp
//
//  Created by Диана Овечкина on 29.12.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        toTableVC()
    }
    
    
    private func toTableVC() {
        guard let viewControllers = self.viewControllers else {return}
        viewControllers.forEach {
            if let personsTVC = $0 as? PersonsTableViewController {
                personsTVC.persons = persons
            }
            else if let infoPersonTVC = $0 as? InfoPersonTableViewController {
                infoPersonTVC.persons = persons
            }
        }
}
}
