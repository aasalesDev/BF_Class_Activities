//
//  ViewController.swift
//  TableViewCollectionViewTabBar
//
//  Created by Anderson Sales on 14/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    let tabBarVC = UITabBarController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        configureTabBarController()
        configureTabBarItems()
    }
    
    private func configureTabBarController() {
        let screen01 = UINavigationController(rootViewController: FirstScreen())
        let screen02 = UINavigationController(rootViewController: SecondScreen())
        let screen03 = UINavigationController(rootViewController: ThirdScreen())
        let screen04 = UINavigationController(rootViewController: FourthScreen())
        
        tabBarVC.setViewControllers([screen01, screen02, screen03, screen04], animated: true)
        navigationController?.pushViewController(tabBarVC, animated: true)
    }
    
    private func configureTabBarItems() {
        guard let items = tabBarVC.tabBar.items else { return }
        var images = ["house", "bell", "star", "gear"]
        for index in 0..<items.count {
            items[index].badgeValue = String(index+1)
            items[index].image = UIImage(systemName: images[index])
        }
    }
}
