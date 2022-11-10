//
//  Record.swift
//  altsfw
//
//  Created by Nelson Rodriguez on 10/26/22.
//
//  A model created to store information of a user
//

import Foundation

class Person {
    // username, password
    var username: String = ""
    var password: String = ""
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}
