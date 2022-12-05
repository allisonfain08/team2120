//
//  RegisterViewController.swift
//  altsfw
//
//  Created by Allison Fain on 10/14/22.
//

import UIKit
import SwiftUI


var personArray = PersonArray()
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
    let database = DBHelper()
    
    @IBAction func submit(_ sender: Any) {
            database.insert(username: usernameField.text ?? "sad", password: passwordField.text ?? "sad")
            var persons:[Person] = []
            persons = database.read()
            //print(persons[0])
        
        personArray.addItem(item: PersonInfo(username: usernameField.text ?? "invalid", password: passwordField.text ?? "invalid"), user: usernameField.text ?? "invalid", pass: passwordField.text ?? "invalid")
//        personArray.addItem(item: PersonInfo(username: usernameField.text ?? "not given", password: passwordField.text ?? "not given"))
        //PersonInfo(username: usernameField.text ?? "invalid", password: passwordField.text ?? "invalid")
        
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
