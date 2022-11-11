//
//  MainTabBarController.swift
//  FirstTabBarApp
//
//  Created by Anderson Sales on 10/11/22.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configTabBarItems()
        configTabBar()
    }
    
    private func configTabBarItems(){
        if let items = tabBar.items {
            items[0].title = "Menu"
            items[1].title = "Menu"
            items[2].title = "Menu"
        }
    }
    
    private func configTabBar(){
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }
}
