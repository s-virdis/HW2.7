//
//  Contact.swift
//  HW2.7
//
//  Created by lastbyte on 18.03.2020.
//  Copyright © 2020 lastbyte. All rights reserved.
//

struct Contact {
    var firstName: String
    var lastName: String
    var email: String
    var phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Contact {
    
    static func getData() -> [Contact] {
        
        var contacts: [Contact] = []
        let lastName = getLastName().shuffled()
        let firstName = getFirstName().shuffled()
        let phones = getPhones().shuffled()
        let emails = getEmails().shuffled()
        
        for index in 0..<emails.count {
            let contact = Contact(
                firstName: firstName[index],
                lastName: lastName[index],
                email: emails[index],
                phone: phones[index])
            contacts.append(contact)
        }
        
        
        
        return contacts
    }
    
    
    private static func getLastName() -> [String] {
           [
               "Пушкин",
               "Есенин",
               "Карамзин",
               "Лермонтов",
               "Толстой",
               "Тургенев",
               "Чехов",
               "Гоголь",
               "Блок",
               "Грибоедов"
           ]
       }
       
       private static func getFirstName() -> [String] {
           [
               "Иван",
               "Лев",
               "Александр",
               "Николай",
               "Антон",
               "Михаил",
               "Игорь",
               "Федор",
               "Владимир",
               "Сергей"
           ]
       }
       
       private static func getEmails() -> [String] {
           [
               "one@facebook.com",
               "two@gmail.com",
               "dklsjd@google.com",
               "lksd@yahoo.com",
               "sldk@vk.com",
               "six@gmail.com",
               "opepk@gmail.com",
               "sdklj@gmail.com",
               "sdj@gmail.com",
               "ewkee@gmail.com"
           ]
       }
       
       private static func getPhones() -> [String] {
           [
               "+7 999 111 11 01",
               "+7 999 111-11 02",
               "+7 999 111-11 03",
               "+7 999 111-11 04",
               "+7 999 111-11 05",
               "+7 999 111-11 06",
               "+7 999 111-11 07",
               "+7 999 111-11 08",
               "+7 999 111-11 09",
               "+7 999 111-11 00",
           ]
       }
    
    
    
}
