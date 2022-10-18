//
//  Screen03ViewController.swift
//  ObjectDataTransition
//
//  Created by Anderson Sales on 18/10/22.
//

import UIKit

class Screen03ViewController: UIViewController {

    @IBOutlet weak var screen03label: UILabel!
    var labelTextValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.screen03label.text = labelTextValue ?? "Something faiô!"
    }
}
