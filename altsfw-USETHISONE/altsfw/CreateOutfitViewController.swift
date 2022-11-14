//
//  CreateOutfitViewController.swift
//  altsfw
//
//  Created by Sreya Atmuri on 11/13/22.
//

import UIKit
import StarRating

var outfitsArray = OutfitsArray()
class CreateOutfitViewController: UIViewController {

    @IBOutlet weak var img0: UIImageView!
    
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var img3: UIImageView!
    
    @IBOutlet weak var switch0: UISwitch!
    
    @IBOutlet weak var switch1: UISwitch!
    
    @IBOutlet weak var switch2: UISwitch!
    
    @IBOutlet weak var switch3: UISwitch!
    
    @IBOutlet weak var outfitName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateImageViews()
        // Do any additional setup after loading the view.
        switch0.isOn = false
        switch1.isOn = false
        switch2.isOn = false
        switch3.isOn = false
    }
    
    @IBAction func submit(_ sender: Any) {
        checkSwitches()
        outfitsArray.printOutfits()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let ViewOutfitsViewController = storyboard.instantiateViewController(identifier: "ViewOutfitsViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(ViewOutfitsViewController)
    }
    
    func checkSwitches() {
        var switchArray = [UISwitch]()
        switchArray.append(switch0)
        switchArray.append(switch1)
        switchArray.append(switch2)
        switchArray.append(switch3)
        
        var size = switchArray.count
        
        var clothingItems = [ArticleOfClothing]()
        
        for idx in 0...(size - 1) {
            if (switchArray[idx].isOn) {
                //if it's on, add the ArticleOfClothing
                clothingItems.append(closetArray.getArticleOfClothing(index: idx))
            }
        }
        
        var outfit = Outfit(name: outfitName.text ?? "outfit", clothingItems: clothingItems)
        outfitsArray.addItem(item: outfit)
    }
    
    func populateImageViews() {
        var imgArray = [img0, img1, img2, img3]
        for i in 0...(imgArray.count - 1) {
            if (closetArray.closet[i] != nil){
                imgArray[i]?.image = closetArray.closet[i].image
            }
        }
    }

    
    var rating = StarRating(initialRating: 3.5, onRatingChanged: {print($0)})
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
