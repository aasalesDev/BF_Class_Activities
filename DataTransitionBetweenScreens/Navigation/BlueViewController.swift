//
//  BlueViewController.swift
//  Navigation
//
//  Created by Anderson Sales on 07/10/22.
//

import UIKit

class BlueViewController: UIViewController {
    
    var name = ""
    var surname = ""

    @IBOutlet weak var fullNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = "\(name) \(surname)"
    }
    
    @IBAction func callYellowScreenButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "GoToYellowScreen", sender: nil)
    }
    
    @IBAction func dismissScreenButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
