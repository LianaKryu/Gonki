//
//  ChangeCarCollectionViewController.swift
//  Gonki
//
//  Created by LianaKryu on 12.11.2020.
//

import UIKit

private let reuseIdentifier = "Cell"
var userCarImage: String = "icons8-sedan1"

class ChangeCarCollectionViewController: UICollectionViewController {
 
  let cars = ["icons8-car", "icons8-f1_car", "icons8-sedan", "icons8-sedan1"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
         return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cars.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ChangeCarCollectionViewCell
        let imageName = cars[indexPath.item]
        let image = UIImage(named: imageName)
        cell.carPicture.image = image
        
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        userCarImage = cars[indexPath.item]
        let alert = UIAlertController(title: "Car Change", message: "Car changed", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: nil))
     //   self.present(alert, animated: true, completion: nil)
        return true
    }

    
}
