//
//  ViewController.swift
//  ObjectDataTransition
//
//  Created by Anderson Sales on 18/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func screen03ButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToScreen03", sender: "Anderson Alexandre Sales")
    }
    
    @IBAction func screen02ButtonTappped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToScreen02", sender: "ANDERSON ALEXANDRE SALES")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToScreen02"{
            let vc: Screen02ViewController? = segue.destination as? Screen02ViewController
            vc?.labelTextValue = sender as? String
        } else if segue.identifier == "goToScreen0w3" {
            let vc: Screen03ViewController? = segue.destination as? Screen03ViewController
            vc?.labelTextValue = sender as? String
        } else {
            let vc: Screen03ViewController? = segue.destination as? Screen03ViewController
            vc?.labelTextValue = "Ihuuuuu!!!"
        }
    }
}

