//
//  FourthScreen.swift
//  TableViewCollectionViewTabBar
//
//  Created by Anderson Sales on 14/11/22.
//

import UIKit

class FourthScreen: UITabBarController {

    static let identifier = "Fourth Screen"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureScreen()
    }
    
    private func configureScreen() {
        view.backgroundColor = .cyan
        title = FourthScreen.identifier
    }
}
