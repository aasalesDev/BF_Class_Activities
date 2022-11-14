//
//  ThirdScreen.swift
//  TableViewCollectionViewTabBar
//
//  Created by Anderson Sales on 14/11/22.
//

import UIKit

class ThirdScreen: UITabBarController {

    static let identifier = "Third Screen"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureScreen()
    }
    
    private func configureScreen() {
        view.backgroundColor = .yellow
        title = ThirdScreen.identifier
    }

}
