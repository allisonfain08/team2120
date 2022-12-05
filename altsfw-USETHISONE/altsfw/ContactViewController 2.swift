//
//  ContactViewController.swift
//  altsfw
//
//  Created by Allison Fain on 11/21/22.
//

import UIKit
import MessageUI
class ContactViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    let mailButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
    }
    
    
    @IBOutlet weak var uitext: UITextField!
    
    func setupButton() {
        view.addSubview(mailButton)
        mailButton.backgroundColor = .systemBlue
        mailButton.addTarget(self, action: #selector(showMailComposer), for: .touchUpInside)
        mailButton.setTitle(NSLocalizedString("Email me", comment: ""), for: .normal)
        mailButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        mailButton.translatesAutoresizingMaskIntoConstraints = false
        mailButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mailButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        mailButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        mailButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    @objc func showMailComposer() {
        guard MFMailComposeViewController.canSendMail() else {
            return
        }
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["afain8@gatech.edu"])
        composer.setSubject("Eklozet Contact Form")
        composer.setMessageBody(uitext.text ?? "null", isHTML: false)
        present(composer, animated: true)
    }
}

extension ViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        if let _ = error {
            controller.dismiss(animated: true, completion: nil)
            return
        }
        switch result {
        case .cancelled:
            break
        case .failed:
            break
        case .saved:
            break
        case .sent:
            break
        @unknown default:
            print("unknown")
        }
        controller.dismiss(animated: true, completion: nil)
    }
}
