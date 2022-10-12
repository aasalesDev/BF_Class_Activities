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
        print("Green Sreen \(#function)")
    }

    @IBAction func callBlueScreenButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "GoToBlueScreen", sender: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Green Sreen \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Green Sreen \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Green Sreen \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Green Sreen \(#function)")
    }
}

