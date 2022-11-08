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
    static var data: [String] = ["car1", "car2", "car3", "car4", "car5", "car6"]
    
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
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
    }
    
    func setupCell(name: String){
        titleLabel.text = name
    }
}

extension CarTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CarTableViewCell.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarCollectionViewCell.identifier, for: indexPath) as? CarCollectionViewCell
        cell?.configureCollectionViewCell(name: CarTableViewCell.data[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 300.00)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let navigationController = UINavigationController()
        let vc = UIStoryboard(name: "DetailViewController", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        navigationController.pushViewController(vc ?? DetailViewController(), animated: true)
    }
}
