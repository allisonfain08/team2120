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
    var topBudget: String =  ""
    var bottomBudget: String = ""
    var outerBudget: String = ""
    var dressBudget: String = ""
    var shoeBudget: String = ""
    var accBudget: String = ""
    var jewelryBudget: String = ""
    
    init(username:String, password:String) {
        self.username = username
        self.password = password
    }
    func setTopBudget(topBudget:String) {
        self.topBudget = topBudget
    }
    
    func setBottomBudget(bottomBudget:String) {
        self.bottomBudget = bottomBudget
    }
    
    func setOuterBudget(outerBudget:String) {
        self.outerBudget = outerBudget
    }
    
    func setDressBudget(dressBudget:String) {
        self.dressBudget = dressBudget
    }
    
    func setShoeBudget(shoeBudget:String) {
        self.shoeBudget = shoeBudget
    }
    func setAccBudget(accBudget:String) {
        self.accBudget = accBudget
    }
    
    func setJewelryBudget(jewelryBudget:String) {
        self.jewelryBudget = jewelryBudget
    }
}
