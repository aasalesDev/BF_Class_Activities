//
//  CarTableViewCell.swift
//  TableViewWithCollectionView
//
//  Created by Anderson Sales on 07/11/22.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier: String = "CarTableViewCell"
    //static var data: [String] = ["car1", "car2", "car3", "car4", "car5", "car6"]
    var vehicles: [String]? = []
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureCollectionView()
    }
    
    func configureCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CarCollectionViewCell.nib(), forCellWithReuseIdentifier: CarCollectionViewCell.identifier)
        /*if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
         layout.scrollDirection = .horizontal
         layout.estimatedItemSize = .zero
         }*/
    }
    
    func setupCell(vehicles: Vehicle){
        titleLabel.text = vehicles.title
        self.vehicles = vehicles.vehicles
        if vehicles.isHorizontal ?? true {
            if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
                layout.scrollDirection = .horizontal
                layout.estimatedItemSize = .zero
            }
        }else {
                if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
                    layout.scrollDirection = .vertical
                    layout.estimatedItemSize = .zero
                }
            }
        }
    }
    
    extension CarTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return vehicles?.count ?? 0
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarCollectionViewCell.identifier, for: indexPath) as? CarCollectionViewCell
            cell?.configureCollectionViewCell(vehicle: vehicles?[indexPath.row] ?? "None")
            return cell ?? UICollectionViewCell()
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.frame.width, height: 280.00)
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            //print(CarTableViewCell.data[indexPath.row])
            
            /*let storyboard = UIStoryboard(name: "DetailViewController", bundle: nil)
             let navigationController = UINavigationController()
             let controller = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
             //controller.selectedIndex = indexPath.row //pass selected cell index to next view.
             navigationController.pushViewController(controller, animated: true)*/
            
            /*let navigationController = UINavigationController()
             let vc = UIStoryboard(name: "DetailViewController", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
             navigationController.pushViewController(vc ?? DetailViewController(), animated: true)*/
        }
    }
