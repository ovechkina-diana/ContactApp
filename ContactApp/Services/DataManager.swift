//
//  DataManager.swift
//  ContactApp
//
//  Created by Диана Овечкина on 29.12.2021.
//


class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John", "Aron", "Tim", "Ted",
        "Steven", "Sharon", "Nicole",
        "Allan", "Bruce", "Carl"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth",
        "Jankin", "Butler", "Black", "Robertson",
        "Murphy", "Williams"
    ]
    
    let emails = [
        "qqq@mail.ru", "www@mail.ru", "eee@mail.ru",
        "rrr@mail.ru", "ttt@mail.ru", "uuu@mail.ru",
        "aaa@mail.ru", " sss@mail.ru", "ddd@mail.ru",
        "ooo@mail.ru"
    ]
    
    let numbers = [
        "12345678", "23456789", "34567890", "45678901",
        "56789012", "67890123", "78901234", "89012345",
        "90123456", "01234567"
    ]
    
    private init() {}
}
