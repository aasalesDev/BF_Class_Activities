//
//  ViewController.swift
//  CopyPasteTextField
//
//  Created by Anderson Sales on 17/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTextFields()
        self.configTapGesture()
    }
    
    func configureTextFields(){
        self.nameTextField.keyboardType = .default
        self.nameTextField.delegate = self
        self.nameTextField.returnKeyType = UIReturnKeyType.continue
        self.nameTextField.tag = 0
        
        self.emailTextField.keyboardType = .emailAddress
        self.emailTextField.delegate = self
        self.emailTextField.returnKeyType = UIReturnKeyType.done
        self.emailTextField.tag = 1
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Inside textFieldDidBeginEditing...")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Inside textFieldDidEndEditing...")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Inside textFieldShouldReturn...")
        
        if let nextTextField = self.view.viewWithTag(textField.tag + 1) as? UITextField {
            nextTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
    
    private func configTapGesture(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap(){
        view.endEditing(true)
    }
}

