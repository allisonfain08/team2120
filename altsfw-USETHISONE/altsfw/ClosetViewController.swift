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
    
    
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var img3: UIImageView!
    
    @IBOutlet weak var img4: UIImageView!
    
    @IBOutlet weak var img5: UIImageView!
    
    @IBOutlet weak var img6: UIImageView!
    
    @IBOutlet weak var img7: UIImageView!
    
    @IBOutlet weak var img8: UIImageView!
    
    @IBAction func viewCloset(_ sender: Any) {
        img1.image = closetArray[0].image ?? NULL
        img2.image = closetArray[1].image ?? NULL
        img3.image = closetArray[2].image ?? NULL
        img4.image = closetArray[3].image ?? NULL
        img5.image = closetArray[4].image ?? NULL
        img6.image = closetArray[5].image ?? NULL
        img7.image = closetArray[6].image ?? NULL
        img8.image = closetArray[7].image ?? NULL

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
