//
//  LoginModel.swift
//  altsfw
//
//  Created by Allison Fain on 10/21/22.
//

import Foundation
class Login {
    var ID: Int
    var name: String?
    var password: String?
    
    init(ID: Int, name: String?, password: String?) {
        self.ID = ID
        self.name = name
        self.password = password
    }
}
