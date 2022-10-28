//
//  ViewController.swift
//  AdvancedTableView
//
//  Created by Anderson Sales on 27/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var firstPerson = [
        SimplePerson(name: "Anderson Sales", image: UIImage(named: "noImage") ?? UIImage())
    ]
    
    var secondPerson = [
        ComplexPerson(name: "Anderson Sales", age: 38, profession: "Engineer", salary: "No money", imageUser: UIImage(named: "noImage") ?? UIImage(), isEnableHeart: false),
        ComplexPerson(name: "Billy Sales", age: 38, profession: "Dog", salary: "Some money", imageUser: UIImage(named: "noImage") ?? UIImage(), isEnableHeart: false),
        ComplexPerson(name: "Gabrielle Sales", age: 38, profession: "Student", salary: "Lot of money", imageUser: UIImage(named: "noImage") ?? UIImage(), isEnableHeart: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(FirstTableViewCell.nib(), forCellReuseIdentifier: FirstTableViewCell.identifier)
        tableView.register(SecondTableViewCell.nib(), forCellReuseIdentifier: SecondTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secondPerson.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: FirstTableViewCell.identifier) as? FirstTableViewCell {
                cell.setupCell(person: firstPerson[indexPath.row])
                return cell
            }
        }
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: SecondTableViewCell.identifier) as? SecondTableViewCell {
            cell.setupCell(person: secondPerson[indexPath.row - 1])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 125
        }
        return 210
    }
}
