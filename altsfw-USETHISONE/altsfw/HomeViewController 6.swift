//
//  HomeViewController.swift
//  altsfw
//
//  Created by Allison Fain on 10/14/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let LoginViewController = storyboard.instantiateViewController(identifier: "LoginViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(LoginViewController)
    }
    
    @IBAction func styleQuiz(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let QuizViewController = storyboard.instantiateViewController(identifier: "QuizViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(QuizViewController)
    }
    
    @IBAction func weather(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let WeatherViewController = storyboard.instantiateViewController(identifier: "WeatherViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(WeatherViewController)
    }
    
    @IBAction func calendar(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CalendarViewController = storyboard.instantiateViewController(identifier: "CalendarViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(CalendarViewController)
    }
    
//    @IBAction func closet(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let ClosetViewController = storyboard.instantiateViewController(identifier: "ClosetViewController")
//            
//            // This is to get the SceneDelegate object from your view controller
//            // then call the change root view controller function to change to main tab bar
//            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(ClosetViewController)
//    }
//    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
