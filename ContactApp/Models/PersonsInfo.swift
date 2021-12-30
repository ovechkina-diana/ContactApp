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
        let dm = DataManager.shared
      
        var persons = [Person]()
        
        for index in 0..<dm.names.count {
            persons.append(Person(name: dm.names.shuffled()[index],
                                  surname: dm.surnames[index],
                                  email: dm.emails[index],
                                  number: dm.numbers[index]))
        }
        return persons
    }
}
