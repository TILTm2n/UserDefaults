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
        
        let settings = UserSettings(authoresize: true)
        
        //lалее нужно заархивировать и получить Data
        let settingsData = try? NSKeyedArchiver.archivedData(withRootObject: settings, requiringSecureCoding: false)
        
        userDefaults.set(settingsData, forKey: "userSetting")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let userSettingsData = userDefaults.object(forKey: "userSetting") as? Data,
           //теперь необходимо разархивировать
           let userSettings = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(userSettingsData) as? UserSettings{
            print("Setttings: \(userSettings)")
        }
        
    }


}

