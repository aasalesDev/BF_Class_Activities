//
//  DetailViewController.swift
//  TableViewWithCollectionView
//
//  Created by Anderson Sales on 08/11/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func configureImageView(name: String){
        print(name)
    }
}
