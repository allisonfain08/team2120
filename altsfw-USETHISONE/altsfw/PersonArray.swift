//
//  PersonArray.swift
//  altsfw
//
//  Created by Allison Fain on 11/16/22.
//

import Foundation

import Foundation
import SwiftUI
import UIKit

// creates array of persons with each holding all the info pertaining to that person.

class PersonArray {
    var person: [PersonInfo] = []
    var username : String = ""
    var password : String = ""
    func addItem(item : PersonInfo, user: String, pass: String) {
        person.append(item)
        username = user
        password = pass
        print("Item added.")
        print(username)
        print(password)
    }
    func printPerson() {
        print(person.description)
    }
    func returnPersonString() -> String {
        return person.description
    }
    func returnPerson() -> [PersonInfo] {
        return person
    }
    func returnIndex() -> Int {
        if (person.count > 0) {
            for i in 0...person.count-1 {
                if (person[i].username == username && person[i].password == password) {
                    return i
                }
            }
        }
        return -1
    }
    func getPersonInfo(index: Int) -> PersonInfo {
        return person[index]
    }
}
