//
//  ViewController.swift
//  TableViewFullyProgramatically
//
//  Created by Anderson Sales on 19/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    let tableView = UITableView()
    
    var data = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...100 {
            data.append("Some data ...\(i)")
        }
        
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Selected line \(indexPath.row + 1 )")
    }
}

