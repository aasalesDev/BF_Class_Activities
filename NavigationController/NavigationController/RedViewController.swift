//
//  RedViewController.swift
//  NavigationController
//
//  Created by Anderson Sales on 07/10/22.
//

import UIKit

class RedViewController: UIViewController {
    
    let myVC = UIStoryboard(name: "GreenViewController", bundle: nil).instantiateViewController(withIdentifier: "GreenScreen") as? GreenViewController

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func callGreenScreenModalButtonTapped(_ sender: UIButton) {
        present(myVC ?? UIViewController(), animated: true)
    }
    
    @IBAction func callGreenScreenNavigationButtonTapped(_ sender: UIButton) {
        navigationController?.pushViewController(myVC ?? UIViewController(), animated: true)
    }
    
    
    @IBAction func dismissModalButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
}
