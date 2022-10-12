//
//  GreenViewController.swift
//  NavigationController
//
//  Created by Anderson Sales on 07/10/22.
//

import UIKit

class GreenViewController: UIViewController {
    
    let myVC = UIStoryboard(name: "BlueViewController", bundle: nil).instantiateViewController(withIdentifier: "BlueScreen") as? BlueViewController

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func callBlueScreenModalButtonTapped(_ sender: UIButton) {
        present(myVC ?? UIViewController(), animated: true)
    }
    
    @IBAction func callBlueScreenNavigationButtonTapped(_ sender: UIButton) {
        navigationController?.pushViewController(myVC ?? UIViewController(), animated: true)
    }
    
    @IBAction func dismissModalButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
