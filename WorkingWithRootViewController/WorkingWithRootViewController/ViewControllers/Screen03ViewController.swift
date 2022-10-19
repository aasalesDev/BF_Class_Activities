//
//  Screen03ViewController.swift
//  WorkingWithRootViewController
//
//  Created by Anderson Sales on 17/10/22.
//

import UIKit

class Screen03ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToScreen04ButtonTapped(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Screen04", bundle: nil).instantiateViewController(withIdentifier: "screen04") as? Screen04ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        /*let vc = UIStoryboard(name: "Screen04", bundle: nil).instantiateViewController(withIdentifier: "screen04") as? Screen04ViewController
        let nav = UINavigationController(rootViewController: vc ?? UIViewController())
        navigationController?.pushViewController(nav, animated: true)*/
    }
}
