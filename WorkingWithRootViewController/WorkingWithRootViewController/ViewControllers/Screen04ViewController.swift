//
//  Screen04ViewController.swift
//  WorkingWithRootViewController
//
//  Created by Anderson Sales on 17/10/22.
//

import UIKit

class Screen04ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToRootViewControllerButtonTapped(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
