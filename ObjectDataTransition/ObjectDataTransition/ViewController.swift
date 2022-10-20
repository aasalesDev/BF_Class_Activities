//
//  ViewController.swift
//  ObjectDataTransition
//
//  Created by Anderson Sales on 20/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    var person: Person?

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        emailTextField.delegate = self
    }


    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let dataViewController = UIStoryboard(name: "Data", bundle: nil).instantiateViewController(withIdentifier: "data") as? DataViewController
        
        person = Person(name: nameTextField.text, email: emailTextField.text)
        dataViewController?.person = person
        
        navigationController?.pushViewController(dataViewController ?? UIViewController(), animated: true)
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

