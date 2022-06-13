//
//  ViewController.swift
//  MyWeatherApp
//
//  Created by Nazlıcan Çay on 4.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var bacgroundImage: UIImageView!
    
    @IBOutlet private weak var weatherStatuse: UILabel!
    
    @IBOutlet private weak var weatherDegree: UILabel!
    
    @IBOutlet private weak var locationLabel: UILabel!
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    @IBOutlet private weak var windTitleLabel: UILabel!
    
    @IBOutlet private weak var windValueLabel: UILabel!
    
    @IBOutlet private weak var rainValuelabel: UILabel!
    
    @IBOutlet private weak var rainTitleLabel: UILabel!
    
    @IBOutlet private weak var pressureTitleLabel: UILabel!
    
    @IBOutlet private weak var pressureValueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction private func refreshButtonPressed(_ sender: Any) {
    }
    
}

