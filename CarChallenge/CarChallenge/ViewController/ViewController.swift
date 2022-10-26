//
//  ViewController.swift
//  CarChallenge
//
//  Created by Anderson Sales on 25/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var cars: [Car] = [Car(brand: "Honda", image: UIImage(named: "Honda") ?? UIImage()),
                       Car(brand: "Toyota", image: UIImage(named: "Toyota") ?? UIImage()),
                       Car(brand: "Subaru", image: UIImage(named: "Subaru") ?? UIImage()),
                       Car(brand: "Mitsubishi", image: UIImage(named: "Mitsubishi") ?? UIImage())
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        
        title = "Car Brands"
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    func configureTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CarTableViewCell.nib(), forCellReuseIdentifier: CarTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = UIStoryboard(name: "DetailViewController", bundle: nil).instantiateViewController(withIdentifier: "detailVC") as? DetailViewController {
            vc.car = cars[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
        print("Brand: \(cars[indexPath.row].brand )")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarTableViewCell", for: indexPath) as? CarTableViewCell
        cell?.configureCell(car: cars[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        cars.remove(at: indexPath.row)
        tableView.reloadData()
    }
}

