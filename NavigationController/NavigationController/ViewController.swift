//
//  ViewController.swift
//  NavigationController
//
//  Created by Anderson Sales on 07/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    let myVC = UIStoryboard(name: "RedViewController", bundle: nil).instantiateViewController(withIdentifier: "RedScreen") as? RedViewController

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func callRedScreenModalButtonTapped(_ sender: UIButton) {
        present(myVC ?? UIViewController(), animated: true)
    }
    
    @IBAction func callRedScreenNavigationButtonTapped(_ sender: UIButton) {
        navigationController?.pushViewController(myVC ?? UIViewController(), animated: true)
    }
}

