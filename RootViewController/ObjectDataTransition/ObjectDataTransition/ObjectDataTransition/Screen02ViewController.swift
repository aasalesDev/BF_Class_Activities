//
//  Screen02ViewController.swift
//  ObjectDataTransition
//
//  Created by Anderson Sales on 18/10/22.
//

import UIKit

class Screen02ViewController: UIViewController {

    @IBOutlet weak var screen02Label: UILabel!
    var labelTextValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.screen02Label.text = labelTextValue ?? "C'st pas possible !"
    }
}
