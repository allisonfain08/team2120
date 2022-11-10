//
//  UploadViewController.swift
//  altsfw
//
//  Created by Allison Fain on 11/9/22.
//

import UIKit

class UploadViewController: UIViewController {
    
    @IBOutlet weak var sizePicker: UIPickerView!
    var sizePickerData: [String] = [String]();
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    self.sizePicker.delegate = self
    self.sizePicker.dataSource = self
    
    sizePickerData = ["blouse", "tshirt", "shorts", "skirt", "long shorts", "dress", "swimsuit"]
    
//    var sizePickerData: [String] = [String]();
    
    
}
