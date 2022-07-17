//
//  HomeViewController.swift
//  UIKitTraining
//
//  Created by Noah's Ark on 2022/07/17.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var currentLocationLabel: UILabel!
    @IBOutlet weak var locationIntroductionLabel: UILabel!
    @IBOutlet weak var horizontalCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        horizontalCollectionView.delegate = self
        horizontalCollectionView.dataSource = self
    }
    
    // Lock landscape mode
    override func viewWillAppear(_ animated: Bool) {
        AppUtility.lockOrientation(UIInterfaceOrientationMask.portrait, andRotateTo: UIInterfaceOrientation.portrait)
    }
    
    // Unlock landscape mode
    override func viewWillDisappear(_ animated: Bool) {
        AppUtility.lockOrientation(UIInterfaceOrientationMask.all)
    }
    
    @IBAction private func searchButtonPressed() {
        print("Hello World")
    }
        
}// ViewController

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 200)
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return roomSampleArray.count
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.horizontalCollectionViewIdentifier, for: indexPath)
        
        cell.backgroundColor = .systemGray
        
        return cell
    }
    
}
