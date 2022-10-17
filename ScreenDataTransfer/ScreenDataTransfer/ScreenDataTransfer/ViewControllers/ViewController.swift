//
//  ViewController.swift
//  ScreenDataTransfer
//
//  Created by Anderson Sales on 16/10/22.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    
    @IBOutlet weak var sentenceLabel: UILabel!
    @IBOutlet weak var sentenceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //You must create an IBAction (and import LocalAuthentication)
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        //Then you must created a variable of type LAContext()
        let context = LAContext()
        //And a variable error
        var error: NSError?
        
        //If your context can evaluate the login policy
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "Please inform your authentication method."
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason){
                success, error in
                if success {
                    print("Success")
                } else {
                    print("Error")
                }
            }
        } else {
            print("Authentication unnavailable!")
        }
    }
    
    @IBAction func goToScreen02ButtonTapped(_ sender: Any) {
        let vc = UIStoryboard(name: "Screen02", bundle: nil).instantiateViewController(withIdentifier: "screen02") as? Screen02ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        vc?.sentence = sentenceTextField.text ?? "Information not available!"
    }
    
    @IBAction func goToScreen03ButtonTapped(_ sender: Any) {
        let vc = UIStoryboard(name: "Screen03", bundle: nil).instantiateViewController(withIdentifier: "screen03") as? Screen03ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        vc?.sentence = sentenceTextField.text ?? "Information not available!"
    }
}

