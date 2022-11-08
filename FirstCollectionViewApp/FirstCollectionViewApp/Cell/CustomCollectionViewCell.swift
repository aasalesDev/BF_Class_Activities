//
//  CustomCollectionViewCell.swift
//  FirstCollectionViewApp
//
//  Created by Anderson Sales on 07/11/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "CustomCollectionViewCell"
    @IBOutlet weak var imageView: UIImageView!
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.contentMode = .scaleAspectFill
        
    }
    
    func setupCell(name: String){
        imageView.image = UIImage(named: name)
    }

}
