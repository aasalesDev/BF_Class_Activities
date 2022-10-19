//
//  Screen02ViewController.swift
//  ScreenDataTransfer
//
//  Created by Anderson Sales on 16/10/22.
//

import UIKit

class Screen02ViewController: UIViewController {
    
    var sentence: String = ""

    @IBOutlet weak var screen02SentenceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen02SentenceLabel.text = "Got '\(sentence)' from \(ViewController.self)"
    }
}
