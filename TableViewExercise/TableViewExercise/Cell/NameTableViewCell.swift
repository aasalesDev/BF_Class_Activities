//
//  NameTableViewCell.swift
//  TableViewExercise
//
//  Created by Anderson Sales on 20/10/22.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    
    /*
     1 - Create cell
     2 - create static identifier
     3 - Add indentifier to the XIB
     4 - Create NIB method
     5 - Create elements and link them
     6 - Configure elements
     7 - Create setup method
     */
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    // Cell life cycle (like the viewDidLoad())
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(name: String){
        nameLabel.text = name
    }
}
