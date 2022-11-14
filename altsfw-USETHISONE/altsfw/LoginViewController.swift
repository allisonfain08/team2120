//
//  LoginViewController.swift
//  altsfw
//
//  Created by Allison Fain on 10/13/22.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func login(_ sender: Any) {
        print(db.checkIfExists(username: username.text, password: password.text))
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let HomeViewController = storyboard.instantiateViewController(identifier: "HomeViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(HomeViewController)
    }
    
    
    
    @IBAction func register(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let RegisterViewController = storyboard.instantiateViewController(identifier: "RegisterViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(RegisterViewController)
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
