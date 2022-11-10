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
    
    @IBOutlet weak var outerRectangleFill: UIImageView!
    @IBOutlet weak var rectangleFill: UITextView!
    @IBOutlet weak var styleLabel: UILabel!
    @IBOutlet weak var whatLabel: UILabel!
    
    @IBOutlet weak var quizDescriptionLabel: UITextView!
    
    @IBOutlet weak var eklozetLogo: UIImageView!
    
    
    @IBAction func back(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let HomeViewController = storyboard.instantiateViewController(identifier: "HomeViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(HomeViewController)
    }
    
    @IBAction func beginButton(_ sender: Any) {
    }
    
    
}
