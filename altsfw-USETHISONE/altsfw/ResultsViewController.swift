//
//  ResultsViewController.swift
//  altsfw
//
//  Created by Shonjoy Bhattacharyya on 10/24/22.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let textView = UITextView(frame: CGRect(x: 20.0, y: 90.0, width: 240.0, height: 100.0))
        textView.contentInsetAdjustmentBehavior = .automatic
        textView.center = self.view.center
        textView.textAlignment = NSTextAlignment.justified
        textView.textColor = UIColor.blue
        textView.backgroundColor = UIColor.lightGray
        var returnArray = swipeTracker.returnNumAnswers().components(separatedBy: ", ")
                    
                    
        textView.text = returnArray.joined(separator: "\n")
        self.view.addSubview(textView)
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

}
