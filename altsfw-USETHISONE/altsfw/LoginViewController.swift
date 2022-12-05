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
    
    @IBOutlet weak var personTable: UITableView!
    let cellReuseIdentifier = "cell"
    var db:DBHelper = DBHelper()
    var persons:[Person] = []
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    // any logic that pertains to the login button will be written
    // here in this function
    @IBAction func login(_ sender: Any) {
        var username_text: String = textField.text!
        var password_text: String = passwordField.text!
        
        // if (username_text != db.queryUser(username_text)) {
            // print("user does not exist")
        // }
        
        
        
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
