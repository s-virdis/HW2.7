//
//  ContactListOtherViewController.swift
//  HW2.7
//
//  Created by lastbyte on 18.03.2020.
//  Copyright © 2020 lastbyte. All rights reserved.
//

import UIKit

class ContactListOtherViewController: UITableViewController {

    // MARK: - Private Properties
    private var contacts = Contact.getData()
    
    private let indexPhone = 0
    private let indexEmail = 1
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }
    
    /* Не работает
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(indexPath.row)
    }
     */
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contacts[indexPath.section]

        cell.textLabel?.text = indexPath.row  % 2 == 0 ? contact.phone : contact.email
        cell.imageView?.image = UIImage(systemName: indexPath.row  % 2 == 0 ? "phone" : "tray")

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }

}
