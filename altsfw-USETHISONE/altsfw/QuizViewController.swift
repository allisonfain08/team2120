//
//  QuizViewController.swift
//  altsfw
//
//  Created by Allison Fain on 10/14/22.
//

import UIKit
import SwiftUI

var swipeTracker = SwipeTracker()

class QuizViewController:
    UIViewController {
    @IBOutlet private weak var results: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //swipe functionality
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeFunc))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeFunc))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    
    @objc func swipeFunc(gesture: UISwipeGestureRecognizer){
        if gesture.direction == .right {
            swipeTracker.addSwipe(direct: .right)
            performSegue(withIdentifier: "nextQuestion", sender: self)
        } else if gesture.direction == .left {
            swipeTracker.addSwipe(direct: .left)
            performSegue(withIdentifier: "nextQuestion", sender: self)
        }
        if(swipeTracker.currQuestion > 10){
            print(swipeTracker.returnNumAnswers())
            swipeTracker.currQuestion = 1
            swipeTracker.clearAnswers()
        }
    }
    @IBAction func back(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let HomeViewController = storyboard.instantiateViewController(identifier: "HomeViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(HomeViewController)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
