//
//  BeginQuizViewController.swift
//  altsfw
//
//  Created by Sreya Atmuri on 10/23/22.
//

import UIKit

class BeginQuizViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var quizInstructionsLabel: UITextView!
    
    @IBOutlet weak var eKlozetLogoImage: UIImageView!
    @IBOutlet weak var innerRectangle: UIImageView!
    @IBOutlet weak var outerRectangle: UIImageView!
    @IBOutlet weak var styleLabel: UILabel!
    @IBOutlet weak var findYourLabel: UILabel!
    
    
    @IBAction func back(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let HomeViewController = storyboard.instantiateViewController(identifier: "HomeViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(HomeViewController)
    }
    
    
    @IBAction func begin(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let QuizViewController = storyboard.instantiateViewController(identifier: "FirstStyleQuizQuestion")
        
        // This is to get the SceneDelegate object from your view controller
        // then call the change root view controller function to change to main tab bar
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(QuizViewController)
    }
    
    
}
