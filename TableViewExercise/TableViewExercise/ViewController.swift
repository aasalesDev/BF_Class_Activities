//
//  ViewController.swift
//  TableViewExercise
//
//  Created by Anderson Sales on 20/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    /*
     1 - Create table view
     2 - Link it to the controller
     3 - Create cell
     4 - Configure cell
     5 - Register cell
     6 - Configure cell exhibition
     */

    @IBOutlet weak var tableView: UITableView!
    
    var names = ["Anderson", "Gabrielle", "Eliane", "Billy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource {
    // indicates the quantity of rows per section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    // populates each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell {
            cell.setupCell(name: names[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}
