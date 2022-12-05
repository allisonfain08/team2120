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
        var textView = UITextView(frame: CGRect(x: 20.0, y: 150, width: 240.0, height: 150.0))
        textView.contentInsetAdjustmentBehavior = .automatic
        textView.center = self.view.center
        textView.textAlignment = NSTextAlignment.center
        textView.textColor = UIColor.systemPurple
        let fixedWidth = textView.frame.size.width
        textView.font = UIFont.systemFont(ofSize: 45)
        //let newSize = textView.sizeThatFits(CGSize(width: fixedWidth, height: //CGFloat.greatestFiniteMagnitude))
        //textView.frame.size = CGSize(width: max(newSize.width, fixedWidth), height: newSize.height)
        
        textView.backgroundColor = UIColor.white
        textView.font = UIFont(name: "Callout", size: 1000)
        var returnString = swipeTracker.returnNumAnswers()
        returnString = String(returnString.dropFirst())
        returnString = String(returnString.dropLast())
        var returnArray = returnString.components(separatedBy: ", ")
        var i = 0
        for var str in returnArray {
            let index = str.index(str.startIndex, offsetBy: 27)
            returnArray[i] = String(str[index...])
            print(returnArray[i])
            i+=1
        }
                    
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
