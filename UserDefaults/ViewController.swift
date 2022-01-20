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
        
        let settings = UserSettings(coder: NSCoder())
        settings.isAuthorized = true
        
        userDefaults.set(settings, forKey: "userSetting")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let userSettings = userDefaults.object(forKey: "userSetting") as? UserSettings {
            print("\(userSettings)")
        }
        
    }


}

