//
//  WeatherCell.swift
//  MyWeatherApp
//
//  Created by Nazlıcan Çay on 14.06.2022.
//

import UIKit

class WeatherCell: UICollectionViewCell {

    @IBOutlet private(set) weak var containerView: UIView!
    @IBOutlet private(set)  weak var hourLabel: UILabel!
    
    @IBOutlet weak var containerViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var containerViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet private(set) weak var statuseImageView: UIImageView!
    
    @IBOutlet private(set) weak var degreeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        SetUpUı()

    }
    
    private func SetUpUı(){
        containerView.layer.cornerRadius = 32
        containerView.layer.borderColor = UIColor.lightGray.cgColor
        containerView.layer.borderWidth = 1
        
    }
    
    func MoveUp() {
        containerViewTopConstraint.constant = 0
        containerViewBottomConstraint.constant = 32
        
        
    }
    
    func MoveDown() {
        containerViewTopConstraint.constant = 16
        containerViewBottomConstraint.constant = 16
    }
}
