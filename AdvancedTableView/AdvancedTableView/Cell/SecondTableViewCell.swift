//
//  SecondTableViewCell.swift
//  AdvancedTableView
//
//  Created by Anderson Sales on 27/10/22.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UIStackView!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    @IBOutlet weak var salaryLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var professionTextField: UITextField!
    @IBOutlet weak var salaryTextField: UITextField!
    
    static let identifier: String = "SecondTableViewCell"
    
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
    
    func setupCell(name: String, age: Int, profession: String, salary: String, imageUser: UIImage, isEnableHeart: Bool){
        nameTextField.text = name
        ageTextField.text = String(age)
        professionTextField.text = profession
        salaryTextField.text = salary
        photoImageView.image = imageUser
        likeButton.titleLabel?.text = "Like"
    }
}
