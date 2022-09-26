//
//  ContentView.swift
//  ContactList
//
//  Created by Alena Belenets on 22.09.2022.
//

import SwiftUI

struct ContentView: View {

    private let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Contacts")
                }
            ProfileView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
