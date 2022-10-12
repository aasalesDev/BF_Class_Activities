//
//  ViewController.swift
//  NavigationProject
//
//  Created by Anderson Sales on 07/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func callModelButtonTapped(_ sender: UIButton) {
        let myVc = UIStoryboard(name: "ModalViewController", bundle: nil).instantiateViewController(withIdentifier: "modalVC") as? ModalViewController
        present(myVc ?? UIViewController(), animated: true)
    }
}

