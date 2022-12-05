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
    var currQuestion = 1
    enum Styles : String {
            case classic = "Classic"
            case chic = "Chic"
            case casual = "Casual"
            case bohemian = "Bohemian"
            case trendy = "Trendy"
            case feminine = "Feminine"
        }
    
    var questions :[Int:[Styles]] =
                        [1: [Styles.trendy, Styles.casual],
                         2: [Styles.bohemian, Styles.feminine],
                         3: [Styles.trendy, Styles.classic],
                         4: [Styles.casual, Styles.chic],
                         5: [Styles.classic, Styles.feminine],
                         6: [Styles.bohemian, Styles.chic],
//                         7: [Styles.classic, Styles.bohemian],
//                         8: [Styles.trendy, Styles.casual],
//                         9: [Styles.chic, Styles.casual],
//                         10: [Styles.bohemian, Styles.trendy]
                        ]
    var numAnswers: [Styles: Int] = [Styles.classic: 0,
                          Styles.chic: 0,
                          Styles.casual: 0,
                          Styles.bohemian: 0,
                          Styles.trendy: 0,
                          Styles.feminine: 0]
    
    func incrementQuestion() {
        currQuestion += 1
    }
    func addSwipe(direct: UISwipeGestureRecognizer.Direction){
        switch currQuestion {
                case 1:
            if(direct == .left){
                numAnswers[questions[1]?[0] ?? Styles.classic]! += 1
            } else {
                numAnswers[questions[1]?[1] ?? Styles.classic]! += 1
            }
                    break
                case 2:
            if(direct == .left){
                numAnswers[questions[2]?[0] ?? Styles.classic]! += 1
            } else {
                numAnswers[questions[2]?[1] ?? Styles.classic]! += 1
            }
                    break
                case 3:
            if(direct == .left){
                numAnswers[questions[3]?[0] ?? Styles.classic]! += 1
            } else {
                numAnswers[questions[3]?[1] ?? Styles.classic]! += 1
            }
                    break
                case 4:
            if(direct == .left){
                numAnswers[questions[4]?[0] ?? Styles.classic]! += 1
            } else {
                numAnswers[questions[4]?[1] ?? Styles.classic]! += 1
            }
                    break
                case 5:
            if(direct == .left){
                numAnswers[questions[5]?[0] ?? Styles.classic]! += 1
            } else {
                numAnswers[questions[5]?[1] ?? Styles.classic]! += 1
            }
                    break
                case 6:
            if(direct == .left){
                numAnswers[questions[6]?[0] ?? Styles.classic]! += 1
            } else {
                numAnswers[questions[6]?[1] ?? Styles.classic]! += 1
            }
                    break
//                case 7:
//            if(direct == .left){
//                numAnswers[questions[7]?[0] ?? Styles.classic]! += 1
//            } else {
//                numAnswers[questions[7]?[1] ?? Styles.classic]! += 1
//            }
//                    break
//                case 8:
//            if(direct == .left){
//                numAnswers[questions[8]?[0] ?? Styles.classic]! += 1
//            } else {
//                numAnswers[questions[8]?[1] ?? Styles.classic]! += 1
//            }
//                    break
//                case 9:
//            if(direct == .left){
//                numAnswers[questions[9]?[0] ?? Styles.classic]! += 1
//            } else {
//                numAnswers[questions[9]?[1] ?? Styles.classic]! += 1
//            }
//                    break
//                case 10:
//            if(direct == .left){
//                numAnswers[questions[10]?[0] ?? Styles.classic]! += 1
//            } else {
//                numAnswers[questions[10]?[1] ?? Styles.classic]! += 1
//            }
//                    break
                
                default:
                    break
                }
        incrementQuestion()
    }

    func printNumAnswers() {
        print(numAnswers.description)
        
    }
    func returnNumAnswers() -> String {
        return numAnswers.description
    }
    
    func clearAnswers() {
    numAnswers = [Styles.classic: 0,
                          Styles.chic: 0,
                          Styles.casual: 0,
                          Styles.bohemian: 0,
                          Styles.trendy: 0,
                  Styles.feminine: 0]
    }
    
}
