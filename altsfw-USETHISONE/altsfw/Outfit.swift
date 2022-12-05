//
//  Outfit.swift
//  altsfw
//
//  Created by Sreya Atmuri on 11/13/22.
//
// An Outfit object represents a collection of ArticleOfClothing items that make up one outfit.
// It has a name and outfit associated with it.

import Foundation
import SwiftUI
import UIKit

struct Outfit {
    var name : String
    var clothingItems : [ArticleOfClothing]
    var rating : String
    
    init(name: String, clothingItems: [ArticleOfClothing], rating: String) {
        self.name = name
        self.clothingItems = clothingItems
        self.rating = rating
    }
    
    
}

