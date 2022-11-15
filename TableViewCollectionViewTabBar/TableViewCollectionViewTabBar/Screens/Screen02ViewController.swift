//
//  Screen02ViewController.swift
//  TableViewCollectionViewTabBar
//
//  Created by Anderson Sales on 14/11/22.
//

import UIKit

class Screen02ViewController: UIViewController {

    @IBOutlet weak var screen02ImageView: UIImageView!
    
    static let identifier = "Screen02ViewController"
    var image: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    private func configView() {
        screen02ImageView.image = UIImage(systemName: image ?? "noImage")
        title = image
        view.backgroundColor = .systemIndigo
    }
}
