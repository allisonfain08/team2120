//
//  ClosetViewController.swift
//  altsfw
//
//  Created by Allison Fain on 10/14/22.
//

import UIKit


class ClosetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let HomeViewController = storyboard.instantiateViewController(identifier: "HomeViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(HomeViewController)
    }
    
    
    @IBOutlet weak var closetLabel: UILabel!
    
    
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var img3: UIImageView!
    
    @IBOutlet weak var img4: UIImageView!
    
    @IBOutlet weak var img5: UIImageView!
    
    @IBOutlet weak var img6: UIImageView!
    
    @IBOutlet weak var img7: UIImageView!
    
    @IBOutlet weak var img8: UIImageView!
    
    //person = new Person(username: <#T##String#>, password: <#T##String#>)
    
    @IBAction func viewCloset(_ sender: Any) {
      //  guard case img1.image = closetArray.closet[0].image as? UIImage else { return }
        
        //closetLabel.text = Person.getUsername(<#T##self: Person##Person#>) + "closet"
        
        var size = closetArray.closet.count - 1
        if(size > 7){
            size = 7
        }
        var imgArray = [img1, img2, img3, img4, img5, img6, img7, img8]
        for i in 0...size {
            if (closetArray.closet[i] != nil){
                imgArray[i]?.image = closetArray.closet[i].image
            }
        }
        
        
        
//        if (closetArray.closet[0] != nil) {
//            img1.image = closetArray.closet[0].image
//        }
//        if (closetArray.closet[1] != nil) {
//            img2.image = closetArray.closet[1].image
//        }
//        if (closetArray.closet[2] != nil) {
//            img3.image = closetArray.closet[2].image
//        }
//        if (closetArray.closet[3] != nil) {
//            img4.image = closetArray.closet[3].image
//        }
//        if (closetArray.closet[4] != nil) {
//            img5.image = closetArray.closet[4].image
//        }
//        if (closetArray.closet[5] != nil) {
//            img6.image = closetArray.closet[5].image
//        }
//        if (closetArray.closet[6] != nil) {
//            img7.image = closetArray.closet[6].image
//        }
//        if (closetArray.closet[7] != nil) {
//            img8.image = closetArray.closet[7].image
//        }
//        img1.image = closetArray.closet[0].image ?? NULL
//        img2.image = closetArray.closet[1].image ?? NULL
//        img3.image = closetArray.closet[2].image ?? NULL
//        img4.image = closetArray.closet[3].image ?? NULL
//        img5.image = closetArray.closet[4].image ? NULL
//        img6.image = closetArray.closet[5].image ? NULL
//        img7.image = closetArray.closet[6].image ? NULL
//        img8.image = closetArray.closet[7].image ? NULL

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
