//
//  CollectionViewCell.swift
//  learn_swift
//
//  Created by Louis Macbook on 06/08/2024.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!

    
    @IBOutlet weak var titleLabel: UILabel!
    
    func setupData( car: Car) {
        titleLabel.text = car.titile
        imageView.image = UIImage(named: car.image)
        
        layer.borderWidth = 1
        layer.cornerRadius = 23
    }
}
