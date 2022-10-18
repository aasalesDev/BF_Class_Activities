//
//  ViewController.swift
//  WorkingWithRootViewController
//
//  Created by Anderson Sales on 17/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func goToScreen02ButtonTapped(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Screen02", bundle: nil).instantiateViewController(withIdentifier: "screen02") as? Screen02ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}

