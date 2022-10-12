//
//  Screen02VC.swift
//  AppNavigationControllerProgrammatically
//
//  Created by Anderson Sales on 08/10/22.
//

import UIKit

class Screen02VC: UIViewController {
    
    var name = ""
    var surname = ""
    var fullName = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var fullNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        surnameLabel.text = surname
        fullNameLabel.text = "\(name) \(surname)"
    }

}
