//
//  ViewController.swift
//  medication-reminder
//
//  Created by Tina Huynh on 3/1/19.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import UIKit


    class ViewController: UIViewController {
        
        let gradient = CAGradientLayer()
        var gradientSet = [[CGColor]]()
        var currentGradient: Int = 0
        
        let gradientOne = UIColor(red: 156/255, green: 39/255, blue: 176/255, alpha: 1).cgColor
        let gradientTwo = UIColor(red: 255/255, green: 64/255, blue: 129/255, alpha: 1).cgColor
        let gradientThree = UIColor(red: 123/255, green: 31/255, blue: 162/255, alpha: 1).cgColor
        let gradientFour = UIColor(red: 32/255, green: 76/255, blue: 255/255, alpha: 1).cgColor
        let gradientFive = UIColor(red: 32/255, green: 158/255, blue: 255/255, alpha: 1).cgColor
        let gradientSix = UIColor(red: 90/255, green: 120/255, blue: 127/255, alpha: 1).cgColor
        let gradientSeven = UIColor(red: 58/255, green: 255/255, blue: 217/255, alpha: 1).cgColor
        
        

        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            
            gradientSet.append([gradientOne, gradientTwo])
            gradientSet.append([gradientTwo, gradientThree])
            gradientSet.append([gradientThree, gradientFour])
            gradientSet.append([gradientFour, gradientFive])
            gradientSet.append([gradientFive, gradientSix])
            gradientSet.append([gradientSix, gradientSeven])
            gradientSet.append([gradientSeven, gradientOne])
            gradient.frame = self.view.bounds
            gradient.colors = gradientSet[currentGradient]
            gradient.startPoint = CGPoint(x:0, y:0)
            gradient.endPoint = CGPoint(x:1, y:1)
            gradient.drawsAsynchronously = true
            self.view.layer.insertSublayer(gradient, at: 0)
            
                        animateGradient()
            
        }
        
        func animateGradient() {
            if currentGradient < gradientSet.count - 1 {
                currentGradient += 1
            } else {
                currentGradient = 0
            }
            
            let gradientChangeAnimation = CABasicAnimation(keyPath: "colors")
            gradientChangeAnimation.duration = 2.0
            gradientChangeAnimation.toValue = gradientSet[currentGradient]
            gradientChangeAnimation.fillMode = kCAFillModeForwards
            gradientChangeAnimation.isRemovedOnCompletion = false
            gradientChangeAnimation.delegate = self
            gradient.add(gradientChangeAnimation, forKey: "colorChange")
        }
        
}

extension ViewController: CAAnimationDelegate {
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        if flag {
            gradient.colors = gradientSet[currentGradient]
            animateGradient()
        }
    }
}

