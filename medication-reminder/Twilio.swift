//
//  Twilio.swift
//  medication-reminder
//
//  Created by John Lee on 2019-03-03.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import Foundation
import UIKit
import MessageUI


class Twilio: UIViewController,
MFMessageComposeViewControllerDelegate {
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
    }
    
    let timeCtr = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func displayMessageInterface() {
        let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = self
        
        let initialTime = Date()
        if ((initialTime.timeIntervalSinceNow * -1) < 20) {
            
            //Dose Notification
            composeVC.recipients = ["3234494226"]
            composeVC.body = "It is time to take your calming pill dose."
            
            if MFMessageComposeViewController.canSendText() {
                self.present(composeVC, animated: true, completion: nil)
            } else {
                print("Error.")
            }
            
            
            if (initialTime.timeIntervalSinceNow * -1) > 20 {
                
                //Text Buddy
                composeVC.recipients = ["3234494226"]
                composeVC.body = "Alert: you missed your dose today. "
                
                if MFMessageComposeViewController.canSendText() {
                    self.present(composeVC, animated: true, completion: nil)
                } else {
                    print("Error.")
                }
            }
        }
    }
    
    @IBAction func getName(_ sender: Any) {
    }
    
    
    @IBAction func sendMessageButtonAction(_ sender: Any) {
        if (timeCtr.timeIntervalSinceNow * -1 < 20) {displayMessageInterface()}
        if (timeCtr.timeIntervalSinceNow * -1 > 20 && timeCtr.timeIntervalSinceNow * -1 < 30) {displayMessageInterface()}
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [UIColor.cyan.cgColor, UIColor.green.cgColor]
        layer.startPoint = CGPoint(x: 0, y: 0)
        layer.endPoint = CGPoint(x:1, y:1)
        self.view.layer.addSublayer(layer)
    }
}
