//
//  LoginQuestionsViewController.swift
//  altsfw
//
//  Created by Olivia Mauger on 11/2/22.
//

import UIKit

class LoginQuestionsViewController: UIViewController {
    let label = UILabel()
    let scrollView = UIScrollView()
    let verticalStackView = UIStackView()
    let dataArray = ["English", "Maths", "History", "German", "Science"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // start with some text in the label
                label.text = "Tap a button"
                
                // center the text in the label
                label.textAlignment = .center
                
                // so we can see the frames
                label.backgroundColor = .yellow
                scrollView.backgroundColor = UIColor(white: 0.9, alpha: 1.0)
                
                // create a vertical stack view to hold the rows of buttons

                verticalStackView.axis = .vertical

                // we're going to use auto-layout
                label.translatesAutoresizingMaskIntoConstraints = false
                scrollView.translatesAutoresizingMaskIntoConstraints = false
                verticalStackView.translatesAutoresizingMaskIntoConstraints = false

                // add label to view
                self.view.addSubview(label)
                
                // add Scrollview to view
                self.view.addSubview(scrollView)
                
                // add stack view to scrollView
                scrollView.addSubview(verticalStackView)
        
        //add label to top of the scroll part
        let q1View = UIStackView()
        let q1Label = UILabel()
        q1Label.text = "What is your usual shirt size?"
        q1Label.textAlignment = .center
        q1View.addArrangedSubview(q1Label)
        verticalStackView.addArrangedSubview(q1View)
        
//        let a1View = UIStackView()
        let a1PickerView = UIPickerView()
        a1PickerView.backgroundColor = .blue
        a1PickerView.translatesAutoresizingMaskIntoConstraints = false
        verticalStackView.addArrangedSubview(a1PickerView)
        
    
        // now let's create the buttons and add them
        var idx = 1
        
        for row in 0...20 {
            // create a "row" stack view
            let rowStack = UIStackView()
            // add it to the vertical stack view
            verticalStackView.addArrangedSubview(rowStack)
            
            for col in 0...4 {
                let button = UIButton()
                button.backgroundColor = .gray
                button.setTitle("hi", for: .normal)
                button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
                
                // add button to row stack view
                rowStack.addArrangedSubview(button)
                
                // buttons should be 50x50
                NSLayoutConstraint.activate([
                    button.widthAnchor.constraint(equalToConstant: 50.0),
                    button.heightAnchor.constraint(equalToConstant: 50.0),
                ])
                
                idx += 1
            }
        }

                // finally, let's set our constraints
                
                // respect safe-area
                let safeG = view.safeAreaLayoutGuide

                NSLayoutConstraint.activate([
                    
                    // constrain label
                    //  50-pts from top
                    //  80% of the width
                    //  centered horizontally
                    label.topAnchor.constraint(equalTo: safeG.topAnchor, constant: 50.0),
                    label.widthAnchor.constraint(equalTo: safeG.widthAnchor, multiplier: 0.8),
                    label.centerXAnchor.constraint(equalTo: safeG.centerXAnchor),
                    
                    // constrain scrollView
                    //  50-pts from bottom of label
                    //  Leading and Trailing to safe-area with 8-pts "padding"
                    //  Bottom to safe-area with 8-pts "padding"
                    scrollView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50.0),
                    scrollView.leadingAnchor.constraint(equalTo: safeG.leadingAnchor, constant: 8.0),
                    scrollView.trailingAnchor.constraint(equalTo: safeG.trailingAnchor, constant: -8.0),
                    scrollView.bottomAnchor.constraint(equalTo: safeG.bottomAnchor, constant: -8.0),
                    
                    // constrain vertical stack view to scrollView Content Layout Guide
                    //  8-pts all around (so we have a little "padding")
                    verticalStackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 8.0),
                    verticalStackView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor, constant: 8.0),
                    verticalStackView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor, constant: -8.0),
                    verticalStackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -8.0),
                    verticalStackView.centerXAnchor.constraint(equalTo: safeG.centerXAnchor),
                    
                ])

            }
            
            @objc func buttonAction(sender: UIButton!) {
                label.text = sender.title(for: .normal)
            }
    
    
    func setupScrollView(){
           
           scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
           scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
           scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
           scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
           
           verticalStackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
           verticalStackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
           verticalStackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
           verticalStackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
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
