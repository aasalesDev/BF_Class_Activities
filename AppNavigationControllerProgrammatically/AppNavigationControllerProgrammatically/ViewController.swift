//
//  ViewController.swift
//  AppNavigationControllerProgrammatically
//
//  Created by Anderson Sales on 08/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTexfield: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func callScreenButtonTapped(_ sender: UIButton) {
        let screen02VC = UIStoryboard(name: "Screen02VC", bundle: nil).instantiateViewController(withIdentifier: "anderson") as? Screen02VC
        
        screen02VC?.name = nameTexfield.text ?? ""
        screen02VC?.surname = surnameTextField.text ?? ""
        
        navigationController?.pushViewController(screen02VC ?? UIViewController(), animated: true)
        
    
    }
    
}

