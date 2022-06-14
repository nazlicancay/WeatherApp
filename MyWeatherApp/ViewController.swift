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
        SetUpUI()
        fetchData()
        
    }
    
    private func fetchData( ){
        /// fecthing Apı data
        
    }

    @IBAction private func refreshButtonPressed(_ sender: Any) {
        fetchData()
    }
    
    private func SetUpUI(){
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(.init(nibName: "WeatherCell", bundle: nil), forCellWithReuseIdentifier: "WeatherCell")
    }
}

extension ViewController : UICollectionViewDelegate{
    
}

extension ViewController : UICollectionViewDataSource{
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        
        if indexPath.row == 0 {
            cell.MoveUp()
        }
        else{
            cell.MoveDown()
        }
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
        
    }
    
   
}
extension ViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: 120, height: 186)
    }
}

