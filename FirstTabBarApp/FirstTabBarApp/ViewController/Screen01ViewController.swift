//
//  ViewController.swift
//  FirstTabBarApp
//
//  Created by Anderson Sales on 10/11/22.
//

import UIKit

class Screen01ViewController: UIViewController {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var users: [User] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    private func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DetailTableViewCell.nib(), forCellReuseIdentifier: DetailTableViewCell.identifier)
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        users.append(User(name: nameTextField.text, image: UIImage(named: "noImage")))
        userImageView.image = UIImage(named: "noImage")
        tableView.reloadData()
    }
}

extension Screen01ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: DetailTableViewCell.identifier, for: indexPath) as? DetailTableViewCell {
            cell.setupCell(user: users[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

