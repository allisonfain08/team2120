// Author: Nelson Rodriguez

// This code contains the primary functionality of the database
// and will be used to store information pertaining users logging into the app

// according to the code, when an instance of object of DBHelper will be created, it will call the constructor and database file will be accessed and table will be created if not created that time.

import Foundation
import SQLite3

class DBHelper
{
    init()
    {
        db = openDatabase()
        createTable()
    }

<<<<<<< HEAD
    let dbPath: String = "myDb.sqlite"
    var db:OpaquePointer?

=======
    let dbPath: String = "loginData.sqlite"
    var db:OpaquePointer?

    
>>>>>>> AllisonFain
    func openDatabase() -> OpaquePointer?
    {
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent(dbPath)
        var db: OpaquePointer? = nil
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK
        {
            print("error opening database")
            return nil
        }
        else
        {
            print("Successfully opened connection to database at \(dbPath)")
            return db
        }
    }
    
    func createTable() {
<<<<<<< HEAD
        let createTableString = "CREATE TABLE IF NOT EXISTS person(username TEXT PRIMARY KEY,password TEXT);"
=======
        let createTableString = "CREATE TABLE IF NOT EXISTS person(Id INTEGER PRIMARY KEY,name TEXT,age INTEGER);"
>>>>>>> AllisonFain
        var createTableStatement: OpaquePointer? = nil
        if sqlite3_prepare_v2(db, createTableString, -1, &createTableStatement, nil) == SQLITE_OK
        {
            if sqlite3_step(createTableStatement) == SQLITE_DONE
            {
                print("person table created.")
            } else {
                print("person table could not be created.")
            }
        } else {
            print("CREATE TABLE statement could not be prepared.")
        }
        sqlite3_finalize(createTableStatement)
    }
    
    
    func insert(username:String, password:String)
    {
        let persons = read()
        for p in persons
        {
<<<<<<< HEAD
            // primary key has to be unique
=======
>>>>>>> AllisonFain
            if p.username == username
            {
                return
            }
        }
<<<<<<< HEAD
        let insertStatementString = "INSERT INTO person (username, password) VALUES (?, ?);"
=======
        let insertStatementString = "INSERT INTO person (username, password) VALUES (NULL, ?);"
>>>>>>> AllisonFain
        var insertStatement: OpaquePointer? = nil
        if sqlite3_prepare_v2(db, insertStatementString, -1, &insertStatement, nil) == SQLITE_OK {
            sqlite3_bind_text(insertStatement, 1, (username as NSString).utf8String, -1, nil)
            sqlite3_bind_text(insertStatement, 2, (password as NSString).utf8String, -1, nil)
<<<<<<< HEAD
            
=======

>>>>>>> AllisonFain
            if sqlite3_step(insertStatement) == SQLITE_DONE {
                print("Successfully inserted row.")
            } else {
                print("Could not insert row.")
            }
        } else {
            print("INSERT statement could not be prepared.")
        }
        sqlite3_finalize(insertStatement)
    }
    
    func read() -> [Person] {
        let queryStatementString = "SELECT * FROM person;"
        var queryStatement: OpaquePointer? = nil
        var psns : [Person] = []
        if sqlite3_prepare_v2(db, queryStatementString, -1, &queryStatement, nil) == SQLITE_OK {
            while sqlite3_step(queryStatement) == SQLITE_ROW {
                let username = String(describing: String(cString: sqlite3_column_text(queryStatement, 0)))
                let password = String(describing: String(cString: sqlite3_column_text(queryStatement, 1)))
<<<<<<< HEAD
                psns.append(Person(username: String(username), password: String(password)))
=======
                psns.append(Person(username: String(), password: String()))
>>>>>>> AllisonFain
                print("Query Result:")
                print("\(username) | \(password)")
            }
        } else {
            print("SELECT statement could not be prepared")
        }
        sqlite3_finalize(queryStatement)
        return psns
    }
    
    func deleteByID(username:String) {
        let deleteStatementStirng = "DELETE FROM person WHERE username = ?;"
        var deleteStatement: OpaquePointer? = nil
        if sqlite3_prepare_v2(db, deleteStatementStirng, -1, &deleteStatement, nil) == SQLITE_OK {
            sqlite3_bind_text(deleteStatement, 1, (username as NSString).utf8String, -1, nil)
            if sqlite3_step(deleteStatement) == SQLITE_DONE {
                print("Successfully deleted row.")
            } else {
                print("Could not delete row.")
            }
        } else {
            print("DELETE statement could not be prepared")
        }
        sqlite3_finalize(deleteStatement)
    }
    
}
