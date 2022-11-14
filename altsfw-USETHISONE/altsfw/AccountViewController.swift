//
//  AccountViewController.swift
//  altsfw
//
//  Created by Mija Kennedy on 11/13/22.
//

import UIKit

class AccountViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.text = Person.getUsername()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBAction func homeButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let HomeViewController = storyboard.instantiateViewController(identifier: "HomeViewController")
            
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
