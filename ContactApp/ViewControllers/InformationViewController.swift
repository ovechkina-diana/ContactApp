//
//  InformationViewController.swift
//  ContactApp
//
//  Created by Диана Овечкина on 29.12.2021.
//

import UIKit

class InformationViewController: UIViewController {
   
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = person.name + " " + person.surname
        numberLabel.text =  "Phone: " + person.number
        emailLabel.text = "Email: " + person.email
    }
    

 

}
