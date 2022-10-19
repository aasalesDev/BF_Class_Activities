//
//  BlueViewController.swift
//  Navigation
//
//  Created by Anderson Sales on 07/10/22.
//

import UIKit

class BlueViewController: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!

    var person: Person?
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameLabel.text = person?.firstName
        lastNameLabel.text = person?.lastName
        ageLabel.text = person?.age
        professionLabel.text = person?.profession
    }
    
    @IBAction func callYellowScreenButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "GoToYellowScreen", sender: nil)
    }
    
    @IBAction func dismissScreenButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
}
