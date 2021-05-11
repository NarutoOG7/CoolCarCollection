//
//  DetailsVC.swift
//  CarCollectionApp
//
//  Created by Spencer Belton on 4/30/21.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var mainImageView: UIImageView!

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var crewNamesText: UILabel!
    @IBOutlet weak var topSpeedText: UILabel!
    @IBOutlet weak var goalText: UILabel!
    
    @IBOutlet weak var subImageViewOne: UIImageView!
    @IBOutlet weak var subImageViewTwo: UIImageView!
    @IBOutlet weak var subImageViewThree: UIImageView!
    
    var car: CarBrain?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = car?.title
        mainImageView.image = UIImage(named: car?.mainImage ?? "")
        crewNamesText.text = car?.crew
        topSpeedText.text = car?.topSpeed
        goalText.text = car?.goal
        subImageViewOne.image = UIImage(named: car?.firstSubImage ?? "")
        subImageViewTwo.image = UIImage(named: car?.secondSubImage ?? "")
        subImageViewThree.image = UIImage(named: car?.thirdSubImage ?? "")
    }
}
