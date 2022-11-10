//
//  DetailViewController.swift
//  TableViewWithCollectionView
//
//  Created by Anderson Sales on 08/11/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var customTitle: String?
    var vehicleName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: vehicleName ?? "car6")
        title = customTitle
    }
}
