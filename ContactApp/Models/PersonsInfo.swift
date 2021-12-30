//
//  PersonsInfo.swift
//  ContactApp
//
//  Created by Диана Овечкина on 29.12.2021.
//

import Foundation


struct Person {
    let name: String
    let surname: String
    let email: String
    let number: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
  //  let dm: DataManager
    
    static func getPersons() -> [Person] {
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let numbers = DataManager.shared.numbers.shuffled()
        
        let indexCount = min(names.count,
                             surnames.count,
                             emails.count,
                             numbers.count)
      
        var persons = [Person]()
        
        for index in 0..<indexCount {
            persons.append(Person(name: names[index],
                                  surname: surnames[index],
                                  email: emails[index],
                                  number: numbers[index]))
        }
        return persons
    }
}
