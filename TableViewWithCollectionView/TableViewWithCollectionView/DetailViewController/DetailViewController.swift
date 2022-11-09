//
//  DetailViewController.swift
//  TableViewWithCollectionView
//
//  Created by Anderson Sales on 08/11/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: name ?? "car6")
    }
}
