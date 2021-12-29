//
//  InfoPersonTableViewController.swift
//  ContactApp
//
//  Created by Диана Овечкина on 29.12.2021.
//

import UIKit

class InfoPersonTableViewController: UITableViewController {
    
    var persons: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].name + " " + persons[section].surname
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsInfo", for: indexPath)
        let person = persons[indexPath.section]
        let index = indexPath.row
        var content = cell.defaultContentConfiguration()
        
        switch index {
        case 0:
            content.text = person.number
        default:
            content.text = person.email
        }

        cell.contentConfiguration = content
       
        return cell
    }
    
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
