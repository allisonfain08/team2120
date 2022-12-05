//
//  InitialScreenViewController.swift
//  altsfw
//
//  Created by Shonjoy Bhattacharyya on 11/13/22.
//

import UIKit

class InitialScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let cellReuseIdentifier = "cell"
    var db:DBHelper = DBHelper()
    var persons:[Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        persons = db.read()
        // Do any additional setup after loading the view.
    }
        
    @IBAction func letsgo(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let LoginViewController = storyboard.instantiateViewController(identifier: "LoginViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(LoginViewController)
    }
    
    
     //functions for table viewing
    // doesn't work, but maybe can be integrated later
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
        cell.textLabel?.text = "Name: " + persons[indexPath.row].username + ", " + "Age: " + String(persons[indexPath.row].password)
        return cell
    }
}
