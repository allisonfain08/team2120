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
    var prevAnswers : [Styles: Int] = [Styles.Classic: 0,
            Styles.Chic: 0,
            Styles.Casual: 0,
            Styles.Bohemian: 0,
            Styles.Trendy: 0,
            Styles.Feminine: 0,
            Styles.Modern: 0,
            Styles.Preppy: 0]
    enum Styles : String {
            case Classic = "Classic"
            case Chic = "Chic"
            case Casual = "Casual"
            case Bohemian = "Bohemian"
            case Trendy = "Trendy"
            case Feminine = "Feminine"
            case Modern = "Modern"
            case Preppy = "Preppy"
        }
    
    var questions :[Int:[Styles]] =
                        [1: [Styles.Trendy, Styles.Casual],
                         2: [Styles.Bohemian, Styles.Feminine],
                         3: [Styles.Trendy, Styles.Modern],
                         4: [Styles.Casual, Styles.Chic],
                         5: [Styles.Chic, Styles.Preppy],
                         6: [Styles.Bohemian, Styles.Chic],
                         7: [Styles.Classic, Styles.Bohemian],
                         8: [Styles.Casual, Styles.Trendy],
                         9: [Styles.Feminine, Styles.Casual],
                         10: [Styles.Classic, Styles.Trendy],
                         11: [Styles.Chic, Styles.Trendy]
                        ]
    var numAnswers: [Styles: Int] = [Styles.Classic: 0,
                          Styles.Chic: 0,
                          Styles.Casual: 0,
                          Styles.Bohemian: 0,
                          Styles.Trendy: 0,
                          Styles.Feminine: 0,
                          Styles.Modern: 0,
                          Styles.Preppy: 0]
        
    
    func incrementQuestion() {
        currQuestion += 1
    }
    func numQuestions() -> Int {
        return self.questions.count
    }
    func addSwipe(direct: UISwipeGestureRecognizer.Direction){
        switch currQuestion {
                case 1:
            if(direct == .left){
                numAnswers[questions[1]?[0] ?? Styles.Classic]! += 1
            } else {
                numAnswers[questions[1]?[1] ?? Styles.Classic]! += 1
            }
            incrementQuestion()
                    break
                case 2:
            if(direct == .left){
                numAnswers[questions[2]?[0] ?? Styles.Classic]! += 1
            } else {
                numAnswers[questions[2]?[1] ?? Styles.Classic]! += 1
            }
            incrementQuestion()
                    break
                case 3:
            if(direct == .left){
                numAnswers[questions[3]?[0] ?? Styles.Classic]! += 1
            } else {
                numAnswers[questions[3]?[1] ?? Styles.Classic]! += 1
            }
            incrementQuestion()
                    break
                case 4:
            if(direct == .left){
                numAnswers[questions[4]?[0] ?? Styles.Classic]! += 1
            } else {
                numAnswers[questions[4]?[1] ?? Styles.Classic]! += 1
            }
            incrementQuestion()
                    break
                case 5:
            if(direct == .left){
                numAnswers[questions[5]?[0] ?? Styles.Classic]! += 1
            } else {
                numAnswers[questions[5]?[1] ?? Styles.Classic]! += 1
            }
            incrementQuestion()
                    break
                case 6:
            if(direct == .left){
                numAnswers[questions[6]?[0] ?? Styles.Classic]! += 1
            } else {
                numAnswers[questions[6]?[1] ?? Styles.Classic]! += 1
            }
            incrementQuestion()
                    break
                case 7:
            if(direct == .left){
               numAnswers[questions[7]?[0] ?? Styles.Classic]! += 1
            } else {
                numAnswers[questions[7]?[1] ?? Styles.Classic]! += 1
            }
            incrementQuestion()
                    break
                case 8:
            if(direct == .left){
                numAnswers[questions[8]?[0] ?? Styles.Classic]! += 1
            } else {
                numAnswers[questions[8]?[1] ?? Styles.Classic]! += 1
            }
            incrementQuestion()
                    break
                case 9:
            if(direct == .left){
                numAnswers[questions[9]?[0] ?? Styles.Classic]! += 1
            } else {
                numAnswers[questions[9]?[1] ?? Styles.Classic]! += 1
            }
            incrementQuestion()
                    break
                case 10:
            if(direct == .left){
                numAnswers[questions[10]?[0] ?? Styles.Classic]! += 1
            } else {
                numAnswers[questions[10]?[1] ?? Styles.Classic]! += 1
            }
            incrementQuestion()
                case 11:
            if(direct == .left){
                numAnswers[questions[11]?[0] ?? Styles.Classic]! += 1
            } else {
                numAnswers[questions[11]?[1] ?? Styles.Classic]! += 1
            }
            incrementQuestion()
                break
                
                default:
                    break
                }
    }

    func printNumAnswers() {
        print(numAnswers.description)
        
    }
    func returnNumAnswers() -> String {
        return numAnswers.description
    }
    func returnPrevAnswers() -> String {
        return prevAnswers.description
    }
    
    func clearAnswers() {
    numAnswers = [Styles.Classic: 0,
                          Styles.Chic: 0,
                          Styles.Casual: 0,
                          Styles.Bohemian: 0,
                          Styles.Trendy: 0,
                          Styles.Feminine: 0,
                          Styles.Modern: 0,
                          Styles.Preppy: 0]
        self.currQuestion = 1
    }
    
}
