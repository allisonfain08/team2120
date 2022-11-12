//
//  UploadViewController.swift
//  altsfw
//
//  Created by Allison Fain on 11/9/22.
//

import UIKit

class UploadViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
//    @IBOutlet weak var sizePicker: UIPickerView!
////    var sizePickerData: [String] = [String]();
//    

//    
//    var sizePickerData = ["blouse", "tshirt", "shorts", "skirt", "long shorts", "dress", "swimsuit"]
//    
////    var sizePickerData: [String] = [String]();
//    
//    
//    @IBOutlet weak var type: UIButton!
//    
//    @IBAction func typeButton(_ sender: AnyObject) {
//        print(type.menu?.title)
//    }
//    
//    
//    
//    
//    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //begin uiTextFields
    
   // var type0 : String
    @IBOutlet weak var type: UITextField!
//    var type0 = String(type.text); ?? "sad"
    
    @IBOutlet weak var material1: UITextField!
//    let material0 = material1.text ?? "sad"
    
    @IBOutlet weak var material2: UITextField!
//    var material3 = material2.text ?? "sad"

    @IBOutlet weak var color1: UITextField!
//    var color0 = color1.text ?? "sad"

    @IBOutlet weak var color2: UITextField!
//    var color3 = color2.text ?? "sad"

    @IBOutlet weak var size: UITextField!
//    var size0 = size.text ?? "sad"

    
    
    @IBAction func submit(_ sender: Any) {
        
        var type0 = (type.text) ?? "sad"
        var material0 = material1.text ?? "sad"
        var material3 = material2.text ?? "sad"
        var color0 = color1.text ?? "sad"
        var color3 = color2.text ?? "sad"
        var size0 = size.text ?? "sad"
        print(size0)
        print(type0)
        print(material0)
        print(material3)
        print(color0)
        print(color3)






        
        
    }
    
    
    
    @IBOutlet weak var myImageView: UIImageView!
    
    
    @IBAction func uploadImage(_ sender: Any) {
        print("hi")
//        myImageUploadRequest()
    }
//
    @IBAction func selectPhoto(_ sender: Any) {
        let myPickerController = UIImagePickerController()
        myPickerController.delegate = self;
        myPickerController.sourceType = UIImagePickerController.SourceType.photoLibrary
        self.present(myPickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        guard let selectedImage = info[.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }

        self.myImageView.image = selectedImage

        picker.dismiss(animated: true, completion: nil)
    }
    
    
}
