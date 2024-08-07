//
//  ViewController.swift
//  learn_swift
//
//  Created by Louis Macbook on 06/08/2024.
//

import UIKit

class ViewController: UIViewController {
    
    var cars = Car.cars
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }

}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return cars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
                as? CollectionViewCell else {
            fatalError("Unable to dequeue CollectionViewCell")
        }
        
        
        cell.setupData(car: cars[indexPath.row])
        
        return cell
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width - 10)/2
        return CGSize(width: size, height: size)
    }

    }

