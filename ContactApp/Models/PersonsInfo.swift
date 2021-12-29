//
//  PersonsInfo.swift
//  ContactApp
//
//  Created by Диана Овечкина on 29.12.2021.
//

import Foundation

let dm = DataManager.shared

struct Person {
    let name: String
    let surname: String
    let email: String
    let number: String
    
  //  let dm: DataManager
    
    static func getPersons() -> [Person] {
        [Person(name: dm.names[0],
                surname: dm.surnames[0],
                email: dm.emails[0],
                number: dm.numbers[0]),
         Person(name: dm.names[1],
                 surname: dm.surnames[1],
                 email: dm.emails[1],
                 number: dm.numbers[1]),
         Person(name: dm.names[2],
                 surname: dm.surnames[2],
                 email: dm.emails[2],
                 number: dm.numbers[2]),
         Person(name: dm.names[3],
                 surname: dm.surnames[3],
                 email: dm.emails[3],
                 number: dm.numbers[3]),
         Person(name: dm.names[4],
                 surname: dm.surnames[4],
                 email: dm.emails[4],
                 number: dm.numbers[4]),
         Person(name: dm.names[5],
                 surname: dm.surnames[5],
                 email: dm.emails[5],
                 number: dm.numbers[5]),
         Person(name: dm.names[6],
                 surname: dm.surnames[6],
                 email: dm.emails[6],
                 number: dm.numbers[6]),
         Person(name: dm.names[7],
                 surname: dm.surnames[7],
                 email: dm.emails[7],
                 number: dm.numbers[7]),
         Person(name: dm.names[8],
                 surname: dm.surnames[8],
                 email: dm.emails[8],
                 number: dm.numbers[8]),
         Person(name: dm.names[9],
                 surname: dm.surnames[9],
                 email: dm.emails[9],
                 number: dm.numbers[9]),
        ]
    }
    
}
