//
//  LoginViewController.swift
//  altsfw
//
//  Created by Allison Fain on 10/13/22.
//

import UIKit
import SQLite3

class LoginViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var db: OpaquePointer?
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var TableViewLogins: UITableView!
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accountList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
                let login: Login
                login = accountList[indexPath.row]
                cell.textLabel?.text = login.name
                return cell
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fileURL = try! FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("LoginData.db")

        // open database

        guard sqlite3_open(fileURL.path, &db) == SQLITE_OK else {
            print("error opening database")
            sqlite3_close(db)
            db = nil
            return
        }
        

        // Do any additional setup after loading the view.
        
        // database stuff
        
        // creating table
        if sqlite3_exec(db, "CREATE TABLE 'LoginData' ( 'ID' INTEGER NOT NULL, 'username' TEXT NOT NULL, 'password' INTEGER NOT NULL, PRIMARY KEY('ID','username') )", nil, nil, nil) != SQLITE_OK {
                    let errmsg = String(cString: sqlite3_errmsg(db)!)
                    print("error creating table: \(errmsg)")
                }
        
    }

    
    @IBAction func save(_ sender: Any) {
        //getting values from textfields
        let name = name.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = password.text?.trimmingCharacters(in: .whitespacesAndNewlines)
 
 
//        //validating that values are not empty
//        if(name?.isEmpty)!{
//            name.layer.borderColor = UIColor.red.cgColor
//            return
//        }
//
//        if(password?.isEmpty)!{
//            password.layer.borderColor = UIColor.red.cgColor
//            return
//        }
 
        //creating a statement
        var stmt: OpaquePointer?
 
        //the insert query
        let queryString = "INSERT INTO LoginData (name, password) VALUES (?,?)"
 
        //preparing the query
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
 
        //binding the parameters
        if sqlite3_bind_text(stmt, 1, name, -1, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure binding name: \(errmsg)")
            return
        }

        if sqlite3_bind_text(stmt, 2, password, -1, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure binding name: \(errmsg)")
            return
        }

        //executing the query to insert values
        if sqlite3_step(stmt) != SQLITE_DONE {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure inserting account: \(errmsg)")
            return
        }
 
//        //emptying the textfields
//        name.text=""
//        password.text=""
 
 
        readValues()
 
        //displaying a success message
        print("Account saved successfully")
         
        self.TableViewLogins.reloadData()


    }
    

    @IBAction func login(_ sender: Any) {
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let HomeViewController = storyboard.instantiateViewController(identifier: "HomeViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(HomeViewController)
    }
    
    var accountList = [Login]()
    func readValues() {
        accountList.removeAll()
        
        let queryString = "SELECT * FROM LoginData"
        
        var stmt:OpaquePointer?
        
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
        
        while(sqlite3_step(stmt) == SQLITE_ROW) {
            let id = sqlite3_column_int(stmt, 0)
            let name = String(cString: sqlite3_column_text(stmt, 1))
            let password = String(cString: sqlite3_column_text(stmt, 2))
            
            accountList.append(Login(ID: Int(id), name: String(describing: name), password: String(describing: password)))
        }
        
        self.TableViewLogins.reloadData()

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
