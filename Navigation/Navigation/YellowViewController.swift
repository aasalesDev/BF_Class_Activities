//
//  YellowViewController.swift
//  Navigation
//
//  Created by Anderson Sales on 07/10/22.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func callRedScreenButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "GoToRedScreen", sender: nil)
    }
    
    @IBAction func dismissScreenButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
