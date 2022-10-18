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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func callBlueScreenButtonTapped(_ sender: Any) {
        //performSegue(withIdentifier: "GoToBlueScreen", sender: nil)
        
        let myVC = UIStoryboard(name: "Blue", bundle: nil).instantiateViewController(withIdentifier: "MyBlueScreen") as? BlueViewController
        
        myVC?.name = nameTextField.text ?? ""
        myVC?.surname = surnameTextField.text ?? ""
        
        navigationController?.pushViewController(myVC ?? UIViewController(), animated: true)
    }
}

