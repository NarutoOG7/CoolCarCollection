//
//  CarCell.swift
//  CarCollectionApp
//
//  Created by Spencer Belton on 4/28/21.
//

import UIKit

class CarCell: UICollectionViewCell {

    @IBOutlet weak var carCellBackgroundView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    var car: Car!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

 
        carCellBackgroundView.layer.cornerRadius = 20
    }
    
}
