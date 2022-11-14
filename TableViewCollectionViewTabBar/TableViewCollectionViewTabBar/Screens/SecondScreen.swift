//
//  SecondScreen.swift
//  TableViewCollectionViewTabBar
//
//  Created by Anderson Sales on 14/11/22.
//

import UIKit

class SecondScreen: UITabBarController {

    static let identifier = "Second Screen"

    override func viewDidLoad() {
        super.viewDidLoad()
       
        configureScreen()
    }
    
    private func configureScreen() {
        view.backgroundColor = .green
        title = SecondScreen.identifier
    }
}
