//
//  SwipeTracker.swift
//  altsfw
//
//  Created by Shonjoy Bhattacharyya on 10/18/22.
//

import Foundation
import SwiftUI
import UIKit

class SwipeTracker {
    var swipeArray = [String]()
    var currQuizResults = [String]()
    var currQuestion = 0
    
    func incrementQuestion() {
        currQuestion += 1
    }
    func addSwipe(swipeType: String){
        swipeArray.append(swipeType)
    }
    func getSwipeArray() -> [String] {
        return swipeArray
    }
    func printSwipeArray() {
        print(swipeArray)
    }
    
}
