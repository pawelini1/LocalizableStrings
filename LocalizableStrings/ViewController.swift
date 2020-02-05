//
//  ViewController.swift
//  LocalizableStrings
//
//  Created by Pawel Szymanski on 04/02/2020.
//  Copyright © 2020 William Hill. All rights reserved.
//

import UIKit
import FirstFramework
import SecondFramework

class ViewController: UIViewController {
    @IBAction func pushFirstViewController() {
        self.navigationController?.pushViewController(FirstViewController(), animated: true)
    }
    
    @IBAction func pushSecondViewController() {
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }
}
