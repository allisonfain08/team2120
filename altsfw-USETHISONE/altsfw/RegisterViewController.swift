//
//  RegisterViewController.swift
//  altsfw
//
//  Created by Allison Fain on 10/14/22.
//

import UIKit
import SwiftUI

var database:DBHelper = DBHelper()
class RegisterViewController: UIViewController {


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
    
    
    @IBOutlet weak var usernameField: UITextField!

    @IBOutlet weak var passwordField: UITextField!
//    var database:DBHelper = db //from InitialScreenViewController
    
    @IBAction func submit(_ sender: Any) {
            print("INSERT")
            database.insert(username: usernameField.text ?? "sad", password: passwordField.text ?? "sad")
            print("READ")
            var persons:[Person] = []
            persons = database.read()
            print(persons)

        
    }
    
    @IBSegueAction func segueToViewQuiz(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: testDropDownView())
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
