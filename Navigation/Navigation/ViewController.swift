//
//  ViewController.swift
//  Navigation
//
//  Created by Anderson Sales on 07/10/22.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func callBlueScreenButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "GoToBlueScreen", sender: nil)
    }
}

