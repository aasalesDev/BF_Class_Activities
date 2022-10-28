//
//  FirstTableViewCell.swift
//  AdvancedTableView
//
//  Created by Anderson Sales on 27/10/22.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "FirstTableViewCell"
    
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
    
    func setupCell(person: SimplePerson){
        nameLabel.text = person.name
        photoImageView.image = person.image
    }
}
