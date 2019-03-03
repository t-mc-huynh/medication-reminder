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
    var avoArg: Int = 0
    var trophArg: Int = 1
    var screenArg: Int = -1;
//    var anima: String = "lottie_good_avocado
    override func viewDidLoad() {
        super.viewDidLoad()
    
        print("AWFAWEFWAEFAWEAWEF")
        print(self.screenArg)

        var anim: String = "lottie_good_avocado"
        if (self.screenArg == 5) {
            anim = "lottie_good_trophy_2"
        } else if (self.screenArg == 1) {
            anim = "lottie_good_dino_dance"
        }
        
        let animationView: LOTAnimationView! = LOTAnimationView(name: anim)
        
        if animationView != nil {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            view.addSubview(animationView)
            animationView.loopAnimation = true
            animationView.play()
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if (segue.identifier == "avoSeg") {
            let svc = segue.destination as! RewardScreenViewController
            svc.screenArg = 5
            print("aa")
        } else if (segue.identifier == "trophSeg") {
            let svc = segue.destination as! RewardScreenViewController
            svc.screenArg = 1
            print("bb")
        }
    }
    
    @IBAction func clickAvo(_ sender: UIButton) {
//        triggerTrophy()
        let storyboard = UIStoryboard(name: "RewardScreens", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "RewardScreen2") as UIViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func clickTroph(_ sender: UIButton) {
    
    }
    
    
    @IBAction func clickDino(_ sender: UIButton) {
        triggerDino()
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
        print("sending")
        let twilio: Twilio = Twilio()
        twilio.displayMessageInterface()

        let storyboard = UIStoryboard(name: "PenaltyScreens", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PenaltyScreen1") as UIViewController
        self.present(vc, animated: true, completion: nil)
    }
    
//
//    @IBAction func onClickAvocado(_ sender: UIButton) {
//        triggerTrophy()
//        let storyboard = UIStoryboard(name: "RewardScreens", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "RewardScreen2") as UIViewController
//        self.present(vc, animated: true, completion: nil)
//    }
//
//
//    @IBAction func onClickTrophy(_ sender: UIButton) {
//        triggerDino()
//         //put
//        let storyboard = UIStoryboard(name: "RewardScreens", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "RewardScreen3") as UIViewController
//        self.present(vc, animated: true, completion: nil)
//    }
//
//    @IBAction func onNavTrophy(_ sender: UIButton) {
//        let twilio: Twilio = Twilio()
//        twilio.displayMessageInterface()
//
//        let storyboard = UIStoryboard(name: "Trophycase", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "Trophycase") as UIViewController
//        self.present(vc, animated: true, completion: nil)
//    }
 
}
