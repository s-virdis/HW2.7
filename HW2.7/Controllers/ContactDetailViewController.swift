//
//  ContactDetailViewController.swift
//  HW2.7
//
//  Created by lastbyte on 18.03.2020.
//  Copyright © 2020 lastbyte. All rights reserved.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Contact!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactNameLabel.text = contact.fullName
        emailLabel.text = contact.email
        phoneLabel.text = contact.phone
    }
    
}
