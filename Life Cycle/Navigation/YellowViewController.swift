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
        print("Yellow Sreen \(#function)")
    }
    
    @IBAction func callRedScreenButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "GoToRedScreen", sender: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Yellow Sreen \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Yellow Sreen \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Yellow Sreen \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Yellow Sreen \(#function)")
    }
    
}
