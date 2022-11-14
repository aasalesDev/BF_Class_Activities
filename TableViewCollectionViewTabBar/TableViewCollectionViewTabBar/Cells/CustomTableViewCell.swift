//
//  CustomTableViewCell.swift
//  TableViewCollectionViewTabBar
//
//  Created by Anderson Sales on 14/11/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var tableCellImageView: UIImageView!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setupCell(imageName: String) {
        tableCellImageView.image = UIImage(systemName: imageName)
    }
    
}
