//
//  ViewController.swift
//  UIKitTraining
//
//  Created by Noah's Ark on 2022/07/15.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // Lock landscape mode
    override func viewWillAppear(_ animated: Bool) {
        AppUtility.lockOrientation(UIInterfaceOrientationMask.portrait, andRotateTo: UIInterfaceOrientation.portrait)
    }
    
    // Unlock landscape mode
    override func viewWillDisappear(_ animated: Bool) {
        AppUtility.lockOrientation(UIInterfaceOrientationMask.all)
    }

}
