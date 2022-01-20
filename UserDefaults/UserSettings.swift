//
//  UserSettings.swift
//  UserDefaults
//
//  Created by Eugene on 20.01.2022.
//

import Foundation

class UserSettings: NSObject, NSCoding{
    
    var isAuthorized: Bool = false
    
    init(authoresize: Bool) {
        isAuthorized = authoresize
    }
    
    fileprivate enum UserSettings{
        static let isAutoresized = "isAutoresized"
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(isAuthorized, forKey: UserSettings.isAutoresized)
    }
    
    required init?(coder: NSCoder) {
        isAuthorized = coder.decodeBool(forKey: UserSettings.isAutoresized)
    }
}
