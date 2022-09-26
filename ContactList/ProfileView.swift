//
//  ProfileView.swift
//  ContactList
//
//  Created by Alena Belenets on 22.09.2022.
//

import SwiftUI

struct ProfileView: View {

    let contacts: [Person]

    var body: some View {
        NavigationView {
            List(contacts) { person in
                Section(header: Text(person.fullName).font(.headline)) {
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
                .textCase(.none)
            }
            .listStyle(.plain)
            .navigationBarTitle("Contact List")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(contacts: Person.getContactList())
    }
}
