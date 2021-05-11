//
//  ViewController.swift
//  CarCollectionApp
//
//  Created by Spencer Belton on 4/28/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var carCollectionView: UICollectionView!
    
    var carsToSelect = Car()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carCollectionView.register(UINib(nibName: "CarCell", bundle: nil), forCellWithReuseIdentifier: "carCell")
        carCollectionView.contentInset.top = (carCollectionView.frame.height - carCollectionView.contentSize.height) / 50
        
        carCollectionView.dataSource = self
        carCollectionView.delegate = self
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "onToNext" {
            if let indexPaths = carCollectionView.indexPathsForSelectedItems {
                let destinationVC = segue.destination as! DetailsVC
                destinationVC.car = carsToSelect.cars[indexPaths[0].row]
                carCollectionView.deselectItem(at: indexPaths[0], animated: false)
            }
        }
    }
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue) {
        
    }
    
}



//MARK: - CollectionView DataSource

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carsToSelect.cars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "carCell", for: indexPath) as! CarCell
        let item = carsToSelect.cars[indexPath.row]
        cell.titleLabel.text = item.title
        cell.detailsLabel.text = item.details
        cell.imageView.image = UIImage(named: item.mainImage)
        cell.contentView.layer.cornerRadius = 20
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "onToNext", sender: indexPath)
    }
    
    
}

//MARK: - CollectionView Delegate

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width : CGFloat = view.bounds.width - 20
        let height : CGFloat = view.bounds.height / 2 - 100
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(50)
    }
}

