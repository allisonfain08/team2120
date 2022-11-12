//
//  ClosetArray.swift
//  altsfw
//
//  Created by Shonjoy Bhattacharyya on 11/12/22.
//
//This is the array of all clothes in a user's closet, NOT the outfits


import Foundation
import SwiftUI
import UIKit

class ClosetArray {
    var closet: [ArticleOfClothing] = []
    func addItem(item : ArticleOfClothing) {
        closet.append(item)
    }
    func printCloset() {
        print(closet.description)
    }
    func returnClosetString() -> String {
        return closet.description
    }
    func returnCloset() -> [ArticleOfClothing] {
        return closet
    }
}


