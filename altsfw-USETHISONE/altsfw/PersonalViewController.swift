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
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var measurementImage: UIImageView!
    
    var indx = personArray.returnIndex()
    
    @IBOutlet weak var aLabel: UILabel!
    
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var dLabel: UILabel!
    @IBOutlet weak var eLabel: UILabel!
    @IBOutlet weak var fLabel: UILabel!
    @IBOutlet weak var gLabel: UILabel!
    @IBOutlet weak var hLabel: UILabel!
    @IBOutlet weak var iLabel: UILabel!
    @IBOutlet weak var jLabel: UILabel!
    
    //A:
    @IBOutlet weak var bustEntryField: UITextField!
    
    //B:
    @IBOutlet weak var waistEntryField: UITextField!
    
    //C:
    @IBOutlet weak var hipEntryField: UITextField!
    
    //D:
    @IBOutlet weak var backWaistEntryField: UITextField!
    
    //E:
    @IBOutlet weak var frontWaistEntryField: UITextField!
    //F:
    @IBOutlet weak var highBustEntryField: UITextField!
    //G:
    @IBOutlet weak var highHipEntryField: UITextField!
    //H:
    @IBOutlet weak var skirtLengthEntryField: UITextField!
    //I:
    @IBOutlet weak var inseamEntryField: UITextField!
    //J:
    @IBOutlet weak var sleeveLengthEntryField: UITextField!
    
    
    @IBAction func nextButton(_ sender: Any) {
        
        personArray.person[indx].bustMeasurement = bustEntryField.text ?? "not given"
        personArray.person[indx].waistMeasurement = waistEntryField.text ?? "not given"
        personArray.person[indx].hipMeasurement = hipEntryField.text ?? "not given"
        personArray.person[indx].backWaistMeasurement = backWaistEntryField.text ?? "not given"
        personArray.person[indx].frontWaistMeasurement = frontWaistEntryField.text ?? "not given"
        personArray.person[indx].highBustMeasurement = highBustEntryField.text ?? "not given"
        personArray.person[indx].highHipMeasurement = highHipEntryField.text ?? "not given"
        personArray.person[indx].skirtLengthMeasurement = skirtLengthEntryField.text ?? "not given"
        personArray.person[indx].inseamMeasurement = inseamEntryField.text ?? "not given"
        personArray.person[indx].sleeveLengthMeasurement = sleeveLengthEntryField.text ?? "not given"
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let HomeViewController = storyboard.instantiateViewController(identifier: "HomeViewController")
        
        //use below to set db values:
//        let bustMeasurement = bustEntryField.text
//        let waistMeasurement = waistEntryField.text
//        let hipMeasurement = hipEntryField.text
//        let backWaistMeasurement = backWaistEntryField.text
//        let frontWaistMeasurement = frontWaistEntryField.text
//        let highBustMeasurement = highBustEntryField.text
//        let highHipMeasurement = highHipEntryField.text
//        let skirtLengthMeasurement = skirtLengthEntryField.text
//        let inseamMeasurement = inseamEntryField.text
//        let sleeveLengthMeasurement = sleeveLengthEntryField.text
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(HomeViewController)
    }
    
    @IBAction func skipButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let HomeViewController = storyboard.instantiateViewController(identifier: "HomeViewController")
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(HomeViewController)
    }
    
    

    
    @IBSegueAction func segueToUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: testDropDownView())
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
