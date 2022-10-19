//
//  ViewController.swift
//  Navigation
//
//  Created by Anderson Sales on 07/10/22.
//

import UIKit

class GreenViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var professionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func callBlueScreenButtonTapped(_ sender: Any) {
        let myVC = UIStoryboard(name: "Blue", bundle: nil).instantiateViewController(withIdentifier: "MyBlueScreen") as? BlueViewController
        let person: Person = Person(firstName: nameTextField.text ?? "", lastName: surnameTextField.text ?? "", age: ageTextField.text ?? "", profession: professionTextField.text ?? "")
        myVC?.person = person
        navigationController?.pushViewController(myVC ?? UIViewController(), animated: true)
    }
}

