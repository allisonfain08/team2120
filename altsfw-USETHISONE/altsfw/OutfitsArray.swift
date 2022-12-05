//
//  OutfitsArray.swift
//  altsfw
//
//  Created by Sreya Atmuri on 11/13/22.
//
// An OutfitsArray object is essntially the user's collection of outfits that the ViewOutfitsViewController uses to populate the page with the account user's outfits.

import Foundation
import SwiftUI
import UIKit

class OutfitsArray {
    var outfits: [Outfit] = []
    
    func addItem(item : Outfit) {
        outfits.append(item)
    }
    
    func printOutfits() {
        print(outfits.description)
    }
    
    func returnOutfitsString() -> String {
        return outfits.description
    }
    func returnOutfits() -> [Outfit] {
        return outfits
    }
}
