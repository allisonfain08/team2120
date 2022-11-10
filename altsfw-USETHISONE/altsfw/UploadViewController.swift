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
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
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
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBOutlet weak var myImageView: UIImageView!
    
    
//    @IBAction func uploadImage(_ sender: Any) {
//        myImageUploadRequest()
//    }
//
    @IBAction func selectPhoto(_ sender: Any) {
        let myPickerController = UIImagePickerController()
        myPickerController.delegate = self;
        myPickerController.sourceType = UIImagePickerController.SourceType.photoLibrary
        self.present(myPickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        guard let selectedImage = info[.editedImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }

        self.myImageView.image = selectedImage

        picker.dismiss(animated: true, completion: nil)
    }
    
    
}
