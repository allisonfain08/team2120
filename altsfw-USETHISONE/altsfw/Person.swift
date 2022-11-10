//
//  Person.swift
//  altsfw
//
//  Created by Shonjoy Bhattacharyya on 11/9/22.
//


import Foundation

class Person {
    // username, password
    var username: String = ""
    var password: String = ""
    
    init(username:String, password:String) {
        self.username = username
        self.password = password
    }
}
