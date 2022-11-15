//
//  TabBarViewController.swift
//  TableViewCollectionViewTabBar
//
//  Created by Anderson Sales on 14/11/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    static let screens = ["Home", "Settings"]
    static let images = ["house", "gear", "bell", "person", "trash", "folder", "tray", "doc", "house", "gear", "bell", "person", "trash", "folder", "tray", "doc"]

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarItems()
        configTabBar()
    }
    
    private func configureTabBarItems() {
        guard let items = tabBar.items else { return }
        for index in 0..<items.count {
            items[index].badgeValue = String(index+1)
            items[index].image = UIImage(systemName: TabBarViewController.images[index])
            items[index].title = TabBarViewController.screens[index]
        }
    }
    
    private func configTabBar(){
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .black
        UITabBar.appearance().barTintColor = .black
        UITabBar.appearance().tintColor = .red
    }
}
