//
//  ViewController.swift
//  AdvancedTableView
//
//  Created by Anderson Sales on 27/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.register(FirstTableViewCell.nib(), forCellReuseIdentifier: FirstTableViewCell.identifier)
        tableView.register(SecondTableViewCell.nib(), forCellReuseIdentifier: SecondTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: FirstTableViewCell.identifier) as? FirstTableViewCell {
            return cell
        }
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: SecondTableViewCell.identifier) as? SecondTableViewCell {
            return cell
        }
        return UITableViewCell()
    }
}
