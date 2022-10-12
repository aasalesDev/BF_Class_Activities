//
//  BlueViewController.swift
//  Navigation
//
//  Created by Anderson Sales on 07/10/22.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func callYellowScreenButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "GoToYellowScreen", sender: nil)
    }
    
    @IBAction func dismissScreenButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
