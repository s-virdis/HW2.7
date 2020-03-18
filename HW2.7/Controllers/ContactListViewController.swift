//
//  ContactListViewController.swift
//  HW2.7
//
//  Created by lastbyte on 18.03.2020.
//  Copyright © 2020 lastbyte. All rights reserved.
//

import UIKit

class ContactListViewController: UITableViewController {

    var contacts = Contact.getData()
        

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].fullName
        return cell
    }
    


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "contactDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let detailVC = segue.destination as! ContactDetailViewController
                dump(contacts[indexPath.row])
                detailVC.contact = contacts[indexPath.row]
            }
        }
    }
    

}
