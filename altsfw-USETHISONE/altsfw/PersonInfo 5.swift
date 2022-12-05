//
//  PersonInfo.swift
//  altsfw
//
//  Created by Allison Fain on 11/16/22.
//

import Foundation
import SwiftUI
import UIKit

// how to get username and password. make them global vars?

struct PersonInfo {
    var username, password, topBudget, bottomBudget, outerBudget, dressBudget, shoeBudget, accBudget, jewelryBudget, bustMeasurement, waistMeasurement, hipMeasurement, backWaistMeasurement, frontWaistMeasurement, highBustMeasurement, highHipMeasurement, skirtLengthMeasurement, inseamMeasurement, sleeveLengthMeasurement: String
    
    init(username: String, password: String, topBudget: String, bottomBudget: String, outerBudget: String, dressBudget: String, shoeBudget: String, accBudget: String, jewelryBudget: String, bustMeasurement: String, waistMeasurement: String, hipMeasurement: String, backWaistMeasurement: String, frontWaistMeasurement: String, highBustMeasurement: String, highHipMeasurement: String, skirtLengthMeasurement: String, inseamMeasurement: String, sleeveLengthMeasurement: String) {
        self.username = username
        self.password = password
        self.topBudget = topBudget
        self.bottomBudget = bottomBudget
        self.outerBudget = outerBudget
        self.dressBudget = dressBudget
        self.shoeBudget = shoeBudget
        self.accBudget = accBudget
        self.jewelryBudget = jewelryBudget
        self.bustMeasurement = bustMeasurement
        self.waistMeasurement = waistMeasurement
        self.hipMeasurement = hipMeasurement
        self.backWaistMeasurement = backWaistMeasurement
        self.frontWaistMeasurement = frontWaistMeasurement
        self.highBustMeasurement = highBustMeasurement
        self.highHipMeasurement = hipMeasurement
        self.skirtLengthMeasurement = skirtLengthMeasurement
        self.inseamMeasurement = inseamMeasurement
        self.sleeveLengthMeasurement = sleeveLengthMeasurement
    }
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
        self.topBudget = "NA"
        self.bottomBudget = "NA"
        self.outerBudget = "NA"
        self.dressBudget = "NA"
        self.shoeBudget = "NA"
        self.accBudget = "NA"
        self.jewelryBudget = "NA"
        self.bustMeasurement = "NA"
        self.waistMeasurement = "NA"
        self.hipMeasurement = "NA"
        self.backWaistMeasurement = "NA"
        self.frontWaistMeasurement = "NA"
        self.highBustMeasurement = "vNA"
        self.highHipMeasurement = "NA"
        self.skirtLengthMeasurement = "NA"
        self.inseamMeasurement = "NA"
        self.sleeveLengthMeasurement = "NA"
    }
}
