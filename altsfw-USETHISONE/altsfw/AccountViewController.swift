//
//  AccountViewController.swift
//  altsfw
//
//  Created by Mija Kennedy on 11/13/22.
//

import UIKit

class AccountViewController: ViewController {

    @IBOutlet weak var topsVal: UILabel!
    
    @IBOutlet weak var bottomsVal: UILabel!
    
    @IBOutlet weak var jacketsVal: UILabel!
    
    @IBOutlet weak var dressesVal: UILabel!
    
    @IBOutlet weak var shoesVal: UILabel!
    
    @IBOutlet weak var accVal: UILabel!
    
    @IBOutlet weak var jewelryVal: UILabel!
    
    @IBOutlet weak var topBVal: UILabel!
    
    @IBOutlet weak var bottomBVal: UILabel!
    
    @IBOutlet weak var outerBVal: UILabel!
    
    @IBOutlet weak var dressBVal: UILabel!
    
    @IBOutlet weak var shoeBVal: UILabel!
    
    @IBOutlet weak var accBVal: UILabel!
    
    @IBOutlet weak var jewelryBVal: UILabel!
    
    @IBOutlet weak var bustVal: UILabel!
    
    @IBOutlet weak var waistVal: UILabel!
    
    @IBOutlet weak var hipsVal: UILabel!
    
    @IBOutlet weak var backWaistVal: UILabel!
    
    @IBOutlet weak var frontWaistVal: UILabel!
    
    @IBOutlet weak var highBustVal: UILabel!
    
    @IBOutlet weak var highHipsVal: UILabel!
    
    @IBOutlet weak var skirtLengthVal: UILabel!
    
    @IBOutlet weak var inseamVal: UILabel!
    
    @IBOutlet weak var sleeveLengthVal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var indx = personArray.returnIndex()
        topBVal.text = personArray.person[indx].topBudget
        bottomBVal.text = personArray.person[indx].bottomBudget
        outerBVal.text = personArray.person[indx].outerBudget
        dressBVal.text = personArray.person[indx].dressBudget
        shoeBVal.text = personArray.person[indx].shoeBudget
        accBVal.text = personArray.person[indx].accBudget
        jewelryBVal.text = personArray.person[indx].jewelryBudget
        bustVal.text = personArray.person[indx].bustMeasurement
        waistVal.text = personArray.person[indx].waistMeasurement
        hipsVal.text = personArray.person[indx].hipMeasurement
        backWaistVal.text = personArray.person[indx].backWaistMeasurement
        frontWaistVal.text = personArray.person[indx].frontWaistMeasurement
        highBustVal.text = personArray.person[indx].highBustMeasurement
        highHipsVal.text = personArray.person[indx].highHipMeasurement
        skirtLengthVal.text = personArray.person[indx].skirtLengthMeasurement
        inseamVal.text = personArray.person[indx].inseamMeasurement
        sleeveLengthVal.text = personArray.person[indx].sleeveLengthMeasurement
        //usernameLabel.text = Person.getUsername()
        // Do any additional setup after loading the view.
    }
    
   
    
    //unmodified labels:
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var outerLabel: UILabel!
    @IBOutlet weak var dressLabel: UILabel!
    @IBOutlet weak var accessoryLabel: UIView!
    @IBOutlet weak var shoeLabel: UILabel!
    @IBOutlet weak var jewelryLabel: UILabel!
    @IBOutlet weak var bustLabel: UILabel!
    @IBOutlet weak var waistLabel: UILabel!
    @IBOutlet weak var hipLabel: UILabel!
    @IBOutlet weak var backWaistLabel: UILabel!
    @IBOutlet weak var frontWaistLabel: UILabel!
    @IBOutlet weak var highBustLabel: UILabel!
    @IBOutlet weak var highHipsLabel: UILabel!
    @IBOutlet weak var skirtLengthLabel: UILabel!
    @IBOutlet weak var inseamLabel: UILabel!
    @IBOutlet weak var sleeveLengthLabel: UILabel!
    
    //section title labels:
    @IBOutlet weak var budgetLabel: UILabel!
    @IBOutlet weak var measurementsLabel: UILabel!
    
    //modified labels:
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var topBudgetLabel: UILabel!
    @IBOutlet weak var bottomBudgetLabel: UILabel!
    @IBOutlet weak var outerBudgetLabel: UILabel!
    @IBOutlet weak var dressBudgetLabel: UILabel!
    @IBOutlet weak var shoeBudgetLabel: UILabel!
    @IBOutlet weak var accBudgetLabel: UILabel!
    @IBOutlet weak var jewelryBudgetLabel: UILabel!
    
    @IBOutlet weak var bustMeasurementLabel: UILabel!
    @IBOutlet weak var waistMeasurementLabel: UILabel!
    @IBOutlet weak var hipMeasurementLabel: UILabel!
    @IBOutlet weak var backWaistMeasurementLabel: UILabel!
    @IBOutlet weak var frontWaistMeasurementLabel: UILabel!
    @IBOutlet weak var highBustMeasurementLabel: UILabel!
    @IBOutlet weak var highHipsMeasurementLabel: UILabel!
    @IBOutlet weak var skirtLengthMeasurementLabel: UILabel!
    @IBOutlet weak var inseamMeasurementLabel: UILabel!
    @IBOutlet weak var sleeveLengthMeasurementLabel: UILabel!
    
    func setBudgetVals() {
        //use getters in Person to get the string value: set label.text to the output of getter
        //this may not work if our storage isn't working.

    }
    
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
