//
//  ViewOutfitsViewController.swift
//  altsfw
//
//  Created by Sreya Atmuri on 11/13/22.
//

import UIKit

class ViewOutfitsViewController: UIViewController {

    @IBOutlet weak var img0: UIImageView!
    
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var img3: UIImageView!
    
    @IBOutlet weak var outfitName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var outfit = outfitsArray.outfits[0]
        outfitName.text = outfit.name
        populateImageViews(outfit: outfit)
    }
    
    
    func populateImageViews(outfit: Outfit) {
        var imgArray = [img0, img1, img2, img3]
        for i in 0...(outfit.clothingItems.count - 1) {
            if (outfit.clothingItems[i] != nil){
                imgArray[i]?.image = outfit.clothingItems[i].image
            }
        }
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
