//
//  PersonalViewController.swift
//  altsfw
//
//  Created by Olivia Mauger on 11/5/22.
//

import UIKit
import SwiftUI


class PersonalViewController: UIViewController {
    
    @IBOutlet weak var aboutYouLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var ageRestrictLabel: UILabel!
    
    @IBOutlet weak var spendingQLabel: UILabel!
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var topCostDropDown: UIButton!
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
        setPopUpButton()
        
     
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
    func setPopUpButton() {
        let optionClosure = {(action: UIAction) in
            print(action.title)} /* Can get rid of this once button works, just to test the selection is working -> should print which option was chosen */
        
        topCostDropDown.menu = UIMenu(children : [
            UIAction(title: "Under $50", state : .on,  handler: optionClosure),
            UIAction(title: "$50 - $100",  handler: optionClosure),
            UIAction(title: "$100 - $150",  handler: optionClosure),
            UIAction(title: "$150 - $200",  handler: optionClosure),
            UIAction(title: "More than $200",  handler: optionClosure)])
        topCostDropDown.showsMenuAsPrimaryAction = true;
        topCostDropDown.changesSelectionAsPrimaryAction = true;
    }
}
