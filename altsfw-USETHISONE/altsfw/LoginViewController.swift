//
//  LoginViewController.swift
//  altsfw
//
//  Created by Allison Fain on 10/13/22.
//

import UIKit
var db:DBHelper = DBHelper()
class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var usernameExistsLabel: UILabel!
    
    @IBAction func login(_ sender: Any) {
        if (db.checkIfExists(username: username.text ?? "sad", password: password.text ?? "sad")) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let HomeViewController = storyboard.instantiateViewController(identifier: "HomeViewController")
                
                // This is to get the SceneDelegate object from your view controller
                // then call the change root view controller function to change to main tab bar
                (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(HomeViewController)
        } else {
            usernameExistsLabel.text = "Account not found, register for an account"
        }
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
