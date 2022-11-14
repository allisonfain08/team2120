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
    var bustMeasurement = ""
    var waistMeasurement = ""
    var hipMeasurement = ""
    var backWaistMeasurement = ""
    var frontWaistMeasurement = ""
    var highBustMeasurement = ""
    var highHipMeasurement = ""
    var skirtLengthMeasurement = ""
    var inseamMeasurement = ""
    var sleeveLengthMeasurement = ""
    
    init(username:String, password:String) {
        self.username = username
        self.password = password
    }
    
    func getUsername() -> String {
        return self.username
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
    func setBustMeasurement(bustMeasure:String) {
        self.bustMeasurement = bustMeasure
    }
    
    func setWaistMeasurement(waistMeasure:String) {
        self.waistMeasurement = waistMeasure
    }
    func setHipMeasurement(hipMeasure:String) {
        self.hipMeasurement = hipMeasure
    }
    
    func setBackWaistMeasurement(backWaistMeasure:String) {
        self.backWaistMeasurement = backWaistMeasure
    }
    func setFrontWaistMeasurement(frontWaistMeasure:String) {
        self.frontWaistMeasurement = frontWaistMeasure
    }
    
    func setHighBustMeasurement(highBustMeasure:String) {
        self.highBustMeasurement = highBustMeasure
    }
    
    func setHighHipMeasurement(highHipMeasure:String) {
        self.highHipMeasurement = highHipMeasure
    }
    
    func setSkirtLengthMeasurement(skirtLengthMeasure:String) {
        self.skirtLengthMeasurement = skirtLengthMeasure
    }
    
    func setInseamMeasurement(inseamMeasure:String) {
        self.inseamMeasurement = inseamMeasure
    }
    
    func setSleeveLengthMeasurement(sleeveLengthMeasure:String) {
        self.sleeveLengthMeasurement = sleeveLengthMeasure
    }
}
