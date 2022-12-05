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
    
    // when you create a username and password, automatically create a new personArray. have an array that holds all those arrays. for each array, have all the fields but initialize to 0 until they fix it
    
    
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
    func getTopBudget() -> String {
        return self.topBudget
    }
    func setBottomBudget(bottomBudget:String) {
        self.bottomBudget = bottomBudget
    }
    func getBottomBudget() -> String {
        return self.bottomBudget
    }
    func setOuterBudget(outerBudget:String) {
        self.outerBudget = outerBudget
    }
    func getOuterBudget() -> String {
        return self.outerBudget
    }
    
    func setDressBudget(dressBudget:String) {
        self.dressBudget = dressBudget
    }
    func getDressBudget() -> String {
        return self.dressBudget
    }
    func setShoeBudget(shoeBudget:String) {
        self.shoeBudget = shoeBudget
    }
    func getShoeBudget() -> String {
        return self.shoeBudget
    }
    func setAccBudget(accBudget:String) {
        self.accBudget = accBudget
    }
    func getAccBudget() -> String {
        return self.accBudget
    }
    func setJewelryBudget(jewelryBudget:String) {
        self.jewelryBudget = jewelryBudget
    }
    func getJewelryBudget() -> String {
        return self.jewelryBudget
    }
    
    func setBustMeasurement(bustMeasure:String) {
        self.bustMeasurement = bustMeasure
    }
    func getBustMeasurement() -> String {
        return self.bustMeasurement
    }
    
    func setWaistMeasurement(waistMeasure:String) {
        self.waistMeasurement = waistMeasure
    }
    func getWaistMeasurement() -> String {
        return self.waistMeasurement
    }
    
    func setHipMeasurement(hipMeasure:String) {
        self.hipMeasurement = hipMeasure
    }
    func getHipMeasurement() -> String {
        return self.hipMeasurement
    }
    func setBackWaistMeasurement(backWaistMeasure:String) {
        self.backWaistMeasurement = backWaistMeasure
    }
    func getBackWaistMeasurement() -> String {
        return self.backWaistMeasurement
    }
    
    func setFrontWaistMeasurement(frontWaistMeasure:String) {
        self.frontWaistMeasurement = frontWaistMeasure
    }
    func getFrontWaistMeasurement() -> String {
        return self.frontWaistMeasurement
    }
    
    func setHighBustMeasurement(highBustMeasure:String) {
        self.highBustMeasurement = highBustMeasure
    }
    func getHighBustMeasurement() -> String {
        return self.highBustMeasurement
    }
    
    func setHighHipMeasurement(highHipMeasure:String) {
        self.highHipMeasurement = highHipMeasure
    }
    func getHighHipMeasurement() -> String {
        return self.highHipMeasurement
    }
    
    func setSkirtLengthMeasurement(skirtLengthMeasure:String) {
        self.skirtLengthMeasurement = skirtLengthMeasure
    }
    func getSkirtLengthMeasurement() -> String {
        return self.skirtLengthMeasurement
    }
    func setInseamMeasurement(inseamMeasure:String) {
        self.inseamMeasurement = inseamMeasure
    }
    func getInseamMeasurement() -> String {
        return self.inseamMeasurement
    }
    
    func setSleeveLengthMeasurement(sleeveLengthMeasure:String) {
        self.sleeveLengthMeasurement = sleeveLengthMeasure
    }
    func getSleeveLengthMeasurement() -> String {
        return self.sleeveLengthMeasurement
    }
}
