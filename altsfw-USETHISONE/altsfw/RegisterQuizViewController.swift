//
//  RegisterQuizViewController.swift
//  altsfw
//
//  Created by Mija Kennedy on 11/5/22.
//

import UIKit

class RegisterQuizViewController: UIViewController {

    
    @IBOutlet weak var aboutYouLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    @IBOutlet weak var ageRestrictLabel: UILabel!
    
    @IBAction func datePicker(_ sender: Any) {
    }
    
    
    @IBOutlet weak var spendingQLabel: UILabel!
    
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var topCostDropDown: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
            print(action.title)}
        
        topCostDropDown.menu = UIMenu(children : [
            UIAction(title: ">$50", state : .on,  handler: optionClosure),
            UIAction(title: "$50 - $100",  handler: optionClosure),
            UIAction(title: "$100 - $150",  handler: optionClosure)])
        topCostDropDown.showsMenuAsPrimaryAction = true;
        topCostDropDown.changesSelectionAsPrimaryAction = true;
    }

}
