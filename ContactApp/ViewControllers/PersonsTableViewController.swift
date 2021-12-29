//
//  PersonsTableViewController.swift
//  ContactApp
//
//  Created by Диана Овечкина on 29.12.2021.
//

import UIKit

class PersonsTableViewController: UITableViewController {
    
    var persons: [Person]!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let informationVC = segue.destination as? InformationViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        informationVC.person = person
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "persons", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.name + " " + person.surname
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }

}
