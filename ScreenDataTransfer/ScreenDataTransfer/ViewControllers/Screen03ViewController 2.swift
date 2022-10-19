//
//  Screen03ViewController.swift
//  ScreenDataTransfer
//
//  Created by Anderson Sales on 16/10/22.
//

import UIKit

class Screen03ViewController: UIViewController {
    
    var sentence: String = ""
    
    @IBOutlet weak var screen03SentenceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen03SentenceLabel.text = "Displaying '\(sentence)' in \(Screen03ViewController.self)!"
    }
}
