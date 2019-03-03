//
//  PenaltyScreenViewController.swift
//  medication-reminder
//
//  Created by Tina Huynh on 3/3/19.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import UIKit
import Lottie

class PenaltyScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let animationView: LOTAnimationView! = LOTAnimationView(name: "lottie_bad_awkward_face")
        
        if animationView != nil {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            //            animationView.contentMode = .scaleAspectFill
            
            view.addSubview(animationView)
            animationView.loopAnimation = true
            animationView.play()
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    func onAwkwardClick() {
        let animationView: LOTAnimationView! = LOTAnimationView(name: "lottie_bad_whale_whale_whale")
        
        if animationView != nil {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            //            animationView.contentMode = .scaleAspectFill
            
            view.addSubview(animationView)
            animationView.loopAnimation = true
            animationView.play()
        }
    }
    
    func onWhaleClick() {
        let animationView: LOTAnimationView! = LOTAnimationView(name: "lottie_bad_birdie")
        
        if animationView != nil {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            //            animationView.contentMode = .scaleAspectFill
            
            view.addSubview(animationView)
            animationView.loopAnimation = true
            animationView.play()
        }
    }
    
    
}
