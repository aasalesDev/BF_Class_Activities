//
//  Screen01ViewController.swift
//  TableViewCollectionViewTabBar
//
//  Created by Anderson Sales on 14/11/22.
//

import UIKit

class Screen01ViewController: UIViewController {

    @IBOutlet weak var screen01ImageView: UIImageView!
    
    static let identifier = "Screen01ViewController"
    var image: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen01ImageView.image = UIImage(systemName: image ?? "noImage")
        title = image
    }
}
