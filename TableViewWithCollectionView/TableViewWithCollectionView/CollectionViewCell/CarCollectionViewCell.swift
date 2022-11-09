//
//  CarCollectionViewCell.swift
//  TableViewWithCollectionView
//
//  Created by Anderson Sales on 08/11/22.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    static let identifier: String = "CarCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCollectionViewCell(vehicle: String){
        imageView.image = UIImage(named: vehicle)
    }

}
