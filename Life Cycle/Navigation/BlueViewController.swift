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
        print("Blue Sreen \(#function)")
    }
    
    @IBAction func callYellowScreenButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "GoToYellowScreen", sender: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Blue Sreen \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Blue Sreen \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Blue Sreen \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Blue Sreen \(#function)")
    }
    
}
