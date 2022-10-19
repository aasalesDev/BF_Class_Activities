//
//  Screen02ViewController.swift
//  DataTransitionBetweenScreens
//
//  Created by Anderson Sales on 18/10/22.
//

import UIKit

class Screen02ViewController: UIViewController {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    
    var person: Person?

    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = "\(person?.firstName ?? "") \(person?.lastName ?? "")"
        ageLabel.text = person?.age
        professionLabel.text = person?.profession
    }
}
