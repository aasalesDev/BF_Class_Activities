//
//  ViewController.swift
//  DataTransitionBetweenScreens
//
//  Created by Anderson Sales on 18/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var professionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendDataToSecondScreenButtonTapped(_ sender: UIButton) {
        let viewController = UIStoryboard(name: "Screen02", bundle: nil).instantiateViewController(withIdentifier: "screen02") as? Screen02ViewController
        let person = Person(firstName: firstNameTextField.text, lastName: lastNameTextField.text, age: ageTextField.text, profession: professionTextField.text)
        viewController?.person = person
        navigationController?.pushViewController(viewController ?? UIViewController(), animated: true)
    }
}

