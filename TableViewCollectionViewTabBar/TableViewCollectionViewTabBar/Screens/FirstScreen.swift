//
//  FirstScreen.swift
//  TableViewCollectionViewTabBar
//
//  Created by Anderson Sales on 14/11/22.
//

import UIKit

class FirstScreen: UITabBarController {
    
    static let identifier = "First Screen"
    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureScreen()
        configureTableView()
        
    }
    
    private func configureScreen() {
        view.backgroundColor = .blue
        title = FirstScreen.identifier
    }
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }

}

extension FirstScreen: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as? CustomTableViewCell
        cell?.setupCell(imageName: "person")
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 150
    }
    
}
