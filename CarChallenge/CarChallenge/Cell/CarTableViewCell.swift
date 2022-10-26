//
//  CarTableViewCell.swift
//  CarChallenge
//
//  Created by Anderson Sales on 25/10/22.
//

import UIKit

class CarTableViewCell: UITableViewCell {

    @IBOutlet weak var carLabel: UILabel!
    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = "CarTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(car: Car){
        carLabel.text = car.brand
        carImageView.image = car.image
    }
}
