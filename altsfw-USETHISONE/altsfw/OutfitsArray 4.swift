//
//  OutfitsArray.swift
//  altsfw
//
//  Created by Sreya Atmuri on 11/13/22.
//

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
