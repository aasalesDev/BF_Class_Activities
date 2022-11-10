//
//  ViewController.swift
//  TableViewWithCollectionView
//
//  Created by Anderson Sales on 07/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    //var names: [String] = ["Sports Cars", "Speed Bikes"]
    //var cars: [String] = ["car1", "car2", "car3", "car4", "car5", "car6"]
    //var bikes: [String] = ["moto1", "moto2", "moto3", "moto4", "moto5", "moto6"]
    
    //var data: [[String]] = [["Sports Cars", "Speed Bikes"], ["car1", "car2", "car3", "car4", "car5", "car6"], ["moto1", "moto2", "moto3", "moto4", "moto5", "moto6"]]
    
    //var cars: Vehicle = Vehicle(vehicles: ["car1", "car2", "car3", "car4", "car5", "car6"], title: "Sports Cars")
    //var bikes: Vehicle = Vehicle(vehicles: ["moto1", "moto2", "moto3", "moto4", "moto5", "moto6"], title: "Speed Bikes")
    
    var vehicles: [Vehicle] = [
        Vehicle(vehicles: ["car1", "car2", "car3", "car4", "car5", "car6"], title: "Sports Cars", isHorizontal: true),
        Vehicle(vehicles: ["moto1", "moto2", "moto3", "moto4", "moto5", "moto6"], title: "Speed Bikes", isHorizontal: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CarTableViewCell.nib(), forCellReuseIdentifier: CarTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vehicles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarTableViewCell.identifier, for: indexPath) as? CarTableViewCell
        if indexPath.row == 0 {
            //cell?.setupCell(vehicles: vehicles[indexPath.row].vehicles, title: vehicles[indexPath.row].title, isHorizontal: vehicles[indexPath.row].isHorizontal)
            cell?.setupCell(vehicles: vehicles[indexPath.row])
        } else {
            //cell?.setupCell(vehicles: vehicles[indexPath.row].vehicles, title: vehicles[indexPath.row].title, isHorizontal: vehicles[indexPath.row].isHorizontal)
            cell?.setupCell(vehicles: vehicles[indexPath.row])
        }
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "DetailViewController", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        vc?.customTitle = vehicles[indexPath.row].title
        vc?.vehicleName = vehicles[indexPath.row].vehicles?[indexPath.row+1]
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}

