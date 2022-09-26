//
//  ContactRowView.swift
//  ContactList
//
//  Created by Alena Belenets on 23.09.2022.
//

import SwiftUI

struct ContactRowView: View {
    let person: Person

    var body: some View {
        List {
        HStack {
            Spacer()
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            Spacer()

            }
            Label(person.phoneNumber, systemImage: "phone")
            Label(person.email, systemImage: "tray")
    }
        .navigationTitle(person.fullName)

    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(person: Person.getContactList().first!)
    }
}
