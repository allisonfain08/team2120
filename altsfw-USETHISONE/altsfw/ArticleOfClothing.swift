//
//  ArticleOfClothing.swift
//  altsfw
//
//  Created by Shonjoy Bhattacharyya on 11/12/22.
// This represents each article of clothing : image, size, type of clothing, color 1 and 2, material 1 and 2

import Foundation
import SwiftUI
import UIKit

struct ArticleOfClothing {
    var type,primaryMaterial,secondaryMaterial, primaryColor,secondaryColor,size : String
    var image = UIImage
    
    init(type: String, primaryMaterial: String, secondaryMaterial: String, primaryColor: String, secondaryColor: String, size: String, image: UIImage) {
        self.type = type
        self.primaryMaterial = primaryMaterial
        self.secondaryMaterial = secondaryMaterial
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.size = size
        self.image = image
    }
}
func getImage() : UIImage {
    return self.image
}
