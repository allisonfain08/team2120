//
//  CalendarViewController.swift
//  altsfw
//
//  Created by Allison Fain on 10/14/22.
//

import UIKit
import EventKit
import EventKitUI

class CalendarViewController: UIViewController, EKEventEditViewDelegate {
    func eventEditViewController(_ controller: EKEventEditViewController, didCompleteWith action: EKEventEditViewAction) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    let eventStore = EKEventStore()
    var time = Date()
    override func viewDidLoad() {
        super.viewDidLoad()
        eventStore.requestAccess( to: EKEntityType.event, completion:{(granted, error) in
                    DispatchQueue.main.async {
                        if (granted) && (error == nil) {
                            let event = EKEvent(eventStore: self.eventStore)
                            event.title = "Outfit for the Day - eKlozet"
                            //event.startDate = self.time
                            event.url = URL(string: "https://apple.com")
                            //event.endDate = self.time
                            event.isAllDay = true
                            let eventController = EKEventEditViewController()
                            eventController.event = event
                            eventController.eventStore = self.eventStore
                            eventController.editViewDelegate = self
                            self.present(eventController, animated: true, completion: nil)
                            
                        }
                    }
                })

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let HomeViewController = storyboard.instantiateViewController(identifier: "HomeViewController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(HomeViewController)
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
