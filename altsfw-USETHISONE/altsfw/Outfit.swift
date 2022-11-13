//
//  Outfit.swift
//  altsfw
//
//  Created by Sreya Atmuri on 11/13/22.
//

import Foundation
import SwiftUI
import UIKit

struct Outfit {
    var name : String
    var clothingItems : [ArticleOfClothing]
    
    init(name: String, clothingItems: [ArticleOfClothing]) {
        self.name = name
        self.clothingItems = clothingItems
    }
    
    
}

