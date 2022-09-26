//
//  ContactsView.swift
//  ContactList
//
//  Created by Alena Belenets on 22.09.2022.
//

import SwiftUI

struct ContactsView: View {

    let contacts: [Person]
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                List(contacts) { person in
                    NavigationLink(
                        person.fullName, destination: ContactRowView(person: person)
                    )
                }
                .listStyle(.plain)
                .navigationBarTitle("Contact List")
            }
        } else {
            // Fallback on earlier versions
        }
    }
}


struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contacts: Person.getContactList())
    }
}

