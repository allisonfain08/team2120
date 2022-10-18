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
