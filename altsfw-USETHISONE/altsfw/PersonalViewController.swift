//
//  PersonalViewController.swift
//  altsfw
//
//  Created by Olivia Mauger on 11/5/22.
//

import UIKit
import SwiftUI


class PersonalViewController: UIViewController {
    
    override func viewDidLoad() {
        struct PersonalViewController: View {
            var body: some View {
                Menu("Options") {
                    Button("Order Now", action: placeOrder)
                    Button("Adjust Order", action: adjustOrder)
                    Button("Cancel", action: cancelOrder)
                }
            }

            func placeOrder() { }
            func adjustOrder() { }
            func cancelOrder() { }
        }
        
       
     
        // Do any additional setup after loading the view.
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
