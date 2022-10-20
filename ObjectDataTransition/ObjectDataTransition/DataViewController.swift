//
//  DataViewController.swift
//  ObjectDataTransition
//
//  Created by Anderson Sales on 20/10/22.
//

import UIKit

class DataViewController: UIViewController {
    
    var person: Person?

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = person?.name
        emailLabel.text = person?.email
    }
}
