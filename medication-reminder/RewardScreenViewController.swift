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
        let animationView: LOTAnimationView! = LOTAnimationView(name: "lottie_good_avocado")
        
        if animationView != nil {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
//            animationView.contentMode = .scaleAspectFill
            
            view.addSubview(animationView)
            animationView.loopAnimation = true
            animationView.play()
        }
    }
    
    func triggerTrophy() {
        let animationView: LOTAnimationView! = LOTAnimationView(name: "lottie_good_trophy_2")
        
        if animationView != nil {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            //            animationView.contentMode = .scaleAspectFill
            
            view.addSubview(animationView)
            animationView.loopAnimation = true
            animationView.play()
        }
    }
    
    func triggerDino() {
        let animationView: LOTAnimationView! = LOTAnimationView(name: "lottie_good_dino_dance")
        
        if animationView != nil {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            //            animationView.contentMode = .scaleAspectFill
            
            view.addSubview(animationView)
            animationView.loopAnimation = true
            animationView.play()
        }
    }
    
    
    @IBAction func onClickAvocado(_ sender: UIButton) {
        triggerTrophy()
    }
    
    
    @IBAction func onClickTrophy(_ sender: UIButton) {
        triggerDino()
        // put
        let twilio: Twilio = Twilio()
        twilio.displayMessageInterface()
    }
    
    @IBAction func onNavTrophy(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Trophycase", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Trophycase") as UIViewController
        self.present(vc, animated: true, completion: nil)
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
