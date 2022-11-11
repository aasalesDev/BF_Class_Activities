//
//  DetailTableViewCell.swift
//  FirstTabBarApp
//
//  Created by Anderson Sales on 10/11/22.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!

    static let identifier: String = "DetailTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(user: User?){
        userName.text = user?.name
        userImage.image = user?.image
    }
}
