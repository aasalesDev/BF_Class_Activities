//
//  Screen03ViewController.swift
//  ScreenDataTransfer
//
//  Created by Anderson Sales on 16/10/22.
//

import UIKit

class Screen03ViewController: UIViewController {
    
    var sentence: String = ""
    
    @IBOutlet weak var screen03TextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen03TextView.text = "Displaying '\(sentence)' in \(Screen03ViewController.self)!"
    }
}
