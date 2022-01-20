//
//  ViewController.swift
//  UserDefaults
//
//  Created by Eugene on 20.01.2022.
//

import UIKit

class ViewController: UIViewController {
    //UserDefaults предназначен для хранения пользовательских настроек
    var userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bool = true
        
        userDefaults.set(bool, forKey: "someBool")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let myBool = userDefaults.bool(forKey: "someBool")
        print(myBool)
        
    }


}

