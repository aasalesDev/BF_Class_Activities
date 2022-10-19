//
//  Screen02ViewController.swift
//  WorkingWithRootViewController
//
//  Created by Anderson Sales on 17/10/22.
//

import UIKit

class Screen02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .brown
    }

    @IBAction func goToScreen03ButtonTapped(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Screen03", bundle: nil).instantiateViewController(withIdentifier: "screen03") as? Screen03ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}
