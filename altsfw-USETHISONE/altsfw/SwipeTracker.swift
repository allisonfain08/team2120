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
            case modern = "Modern"
            case preppy = "Preppy"
            case bohemian = "Bohemian"
            case retro = "Retro"
        }
    var questions :[Int:[Styles]] =
                        [1: [Styles.classic, Styles.modern],
                         2: [Styles.preppy, Styles.bohemian],
                         3: [Styles.retro, Styles.classic],
                         4: [Styles.bohemian, Styles.modern],
                         5: [Styles.preppy, Styles.classic],
                         6: [Styles.modern, Styles.retro],
                         7: [Styles.classic, Styles.bohemian],
                         8: [Styles.retro, Styles.preppy],
                         9: [Styles.modern, Styles.preppy],
                         10: [Styles.bohemian, Styles.retro]]
    var numAnswers: [Styles: Int] = [Styles.classic: 0,
                          Styles.modern: 0,
                          Styles.preppy: 0,
                          Styles.bohemian: 0,
                          Styles.retro: 0]
    
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
                case 7:
            if(direct == .left){
                numAnswers[questions[7]?[0] ?? Styles.classic]! += 1
            } else {
                numAnswers[questions[7]?[1] ?? Styles.classic]! += 1
            }
                    break
                case 8:
            if(direct == .left){
                numAnswers[questions[8]?[0] ?? Styles.classic]! += 1
            } else {
                numAnswers[questions[8]?[1] ?? Styles.classic]! += 1
            }
                    break
                case 9:
            if(direct == .left){
                numAnswers[questions[9]?[0] ?? Styles.classic]! += 1
            } else {
                numAnswers[questions[9]?[1] ?? Styles.classic]! += 1
            }
                    break
                case 10:
            if(direct == .left){
                numAnswers[questions[10]?[0] ?? Styles.classic]! += 1
            } else {
                numAnswers[questions[10]?[1] ?? Styles.classic]! += 1
            }
                    break
                
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
                          Styles.modern: 0,
                          Styles.preppy: 0,
                          Styles.bohemian: 0,
                          Styles.retro: 0]
    }
    
}
