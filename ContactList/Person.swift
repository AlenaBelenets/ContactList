//
//  Person.swift
//  ContactList
//
//  Created by Alena Belenets on 22.09.2022.
//

import Foundation

struct Person: Identifiable {
    var id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String

    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {

        var persons: [Person] = []

        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.phones.shuffled()



        for index in 0..<names.count {
            let person = Person(
                id: index + 1,
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )

            persons.append(person)
        }

        return persons
    }

}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
