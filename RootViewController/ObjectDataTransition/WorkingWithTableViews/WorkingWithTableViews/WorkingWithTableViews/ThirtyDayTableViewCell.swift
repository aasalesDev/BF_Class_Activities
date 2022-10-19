//
//  ThirtyDayTableViewCell.swift
//  WorkingWithTableViews
//
//  Created by Anderson Sales on 18/10/22.
//

import UIKit

class ThirtyDayTableViewCell: UITableViewCell {
    
    let cellView: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.red
            view.layer.cornerRadius = 10
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
        
        let dayLabel: UILabel = {
            let label = UILabel()
            label.text = "Day 1"
            label.textColor = UIColor.white
            label.font = UIFont.boldSystemFont(ofSize: 16)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }() 

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

}
