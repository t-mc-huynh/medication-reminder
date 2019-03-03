//
//  RewardScreenViewController.swift
//  medication-reminder
//
//  Created by John Lee on 2019-03-02.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import UIKit
import Lottie

class RewardScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let animationView: LOTAnimationView! = LOTAnimationView(name: "lottie_bad_oh_deer")
        
        if animationView != nil {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
//            animationView.contentMode = .scaleAspectFill
            
            view.addSubview(animationView)
            animationView.loopAnimation = true
            animationView.play()
        }
    }
    

    @IBAction func Goal1(_ sender: Any) {
        let animationView: LOTAnimationView! = LOTAnimationView(name: "lottie_bad_oh_deer")
        
        if animationView != nil {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            //            animationView.contentMode = .scaleAspectFill
            
            view.addSubview(animationView)
            animationView.loopAnimation = true
            animationView.play()
        }
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
