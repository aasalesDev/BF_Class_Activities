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
        ComplexPerson(name: "Anderson Sales", age: 38, profession: "Engineer", salary: "No money", imageUser: UIImage(named: "noImage") ?? UIImage(), isEnableHeart: false),
        ComplexPerson(name: "Anderson Sales", age: 38, profession: "Engineer", salary: "No money", imageUser: UIImage(named: "noImage") ?? UIImage(), isEnableHeart: false)
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
                cell.setupCell(name: firstPerson[indexPath.row].name, image: firstPerson[indexPath.row].image)
                return cell
            }
        }
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: SecondTableViewCell.identifier) as? SecondTableViewCell {
            cell.setupCell(name: secondPerson[indexPath.row - 1].name, age: secondPerson[indexPath.row - 1].age, profession: secondPerson[indexPath.row - 1].profession, salary: secondPerson[indexPath.row - 1].salary, imageUser: secondPerson[indexPath.row - 1].imageUser, isEnableHeart: false)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 125
        }
        return 200
    }
}
