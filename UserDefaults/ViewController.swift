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
    
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        field.delegate = self
        
        guard let value = userDefaults.value(forKey: "name") as? String else {
            return
        }
        
        label.text = value
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userDefaults.setValue(field.text, forKey: "name")
        field.resignFirstResponder()
        return true
    }

}

