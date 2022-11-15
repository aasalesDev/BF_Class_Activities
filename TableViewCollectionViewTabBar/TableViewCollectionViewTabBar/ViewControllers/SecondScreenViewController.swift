//
//  SecondScreenViewController.swift
//  TableViewCollectionViewTabBar
//
//  Created by Anderson Sales on 14/11/22.
//

import UIKit

class SecondScreenViewController: UIViewController {

    @IBOutlet weak var tabBarTableView: UITableView!
    static let identifier = "SecondScreen"

    override func viewDidLoad() {
        super.viewDidLoad()
        configureScreen()
        configureTableView()
        navigationItem.title = "Title"
    }
    
    private func configureScreen() {
        view.backgroundColor = .systemIndigo
    }
    
    private func configureTableView() {
        tabBarTableView.delegate = self
        tabBarTableView.dataSource = self
        tabBarTableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
}

extension SecondScreenViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TabBarViewController.images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as? CustomTableViewCell
        cell?.setupCell(imageName: TabBarViewController.images[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: SecondScreenViewController.identifier, bundle: nil).instantiateViewController(withIdentifier: Screen02ViewController.identifier) as? Screen02ViewController
        vc?.image = TabBarViewController.images[indexPath.row]
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}
