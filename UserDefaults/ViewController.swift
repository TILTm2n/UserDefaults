//
//  ViewController.swift
//  UserDefaults
//
//  Created by Eugene on 20.01.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var field: UITextField!
    @IBOutlet weak var label: UILabel!
    
    let userDefaults = UserDefaults()
    
    //UserDefaults предназначен для хранения пользовательских настроек
    //var userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        field.delegate = self
        
        guard let value = userDefaults.value(forKey: "name") as? String else {
            return
        }
        
        label.text = value
        
//        let bool = true
//        userDefaults.set(bool, forKey: "someBool")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        let myBool = userDefaults.bool(forKey: "someBool")
//        print(myBool)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        userDefaults.setValue(field.text, forKey: "name")
        field.resignFirstResponder()
        return true
    }

}

