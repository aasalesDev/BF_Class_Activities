//
//  RedViewController.swift
//  Navigation
//
//  Created by Anderson Sales on 07/10/22.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func callHomeScreenButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "GoToHomeScreen", sender: nil)
    }
    
    @IBAction func dismissScreenButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
}
