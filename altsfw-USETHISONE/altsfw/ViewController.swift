//
//  ViewController.swift
//  altsfw
//
//  Created by Allison Fain on 10/13/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var personTable: UITableView!
    let cellReuseIdentifier = "cell"
    var db:DBHelper = DBHelper()
    var persons:[Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        persons = db.read()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var eklozet: UILabel!
    
    @IBOutlet weak var welcome: UILabel!
        
    @IBAction func letsgo(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let LoginViewController = storyboard.instantiateViewController(identifier: "LoginViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(LoginViewController)
    }
    
    
    // functions for table viewing
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
        cell.textLabel?.text = "Name: " + persons[indexPath.row].username + ", " + "Age: " + String(persons[indexPath.row].password)
        return cell
    }
    
}

