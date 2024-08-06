//
//  ViewController.swift
//  learn_swift
//
//  Created by Louis Macbook on 06/08/2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
    
    var images: [String] = ["car1","car2","car3","car4"]
    var carName: [String] = ["honda", "Huyndai", "Toyota", "Accent1111"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CollectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }

}

//extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return carName.count
//    }
//    
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
//        as! CollectionViewCell
//        
//        cell.layer.borderWidth = 1
//        cell.layer.cornerRadius = 23
//        
//        cell.titleLBL.text = carName[indexPath.row]
//        cell.imageView.image = UIImage(named: images[indexPath.row])
//        
//        return cell
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let size = (collectionView.frame.size.width - 10)/2
//        return CGSize(width: size, height: size)
//        
//        
//    }
//}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return carName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        as! CollectionViewCell
        
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 23
        
        cell.titleLBL.text = carName[indexPath.row]
        cell.imageView.image = UIImage(named: images[indexPath.row])
        
        return cell
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width - 10)/2
        return CGSize(width: size, height: size)
    }

    }

