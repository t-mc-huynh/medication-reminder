//
//  TrophyController.swift
//  medication-reminder
//
//  Created by Christian Gonzalez on 3/3/19.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import UIKit
import Lottie

private let reuseIdentifier = "Cell"

class TrophyController: UICollectionViewController {

    @IBOutlet weak var lot: LOTAnimatedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        lot.animationView.setAnimation(named: "lottie_gift_box")
        lot.animationView.play()
    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        return cell
    }
    
    @IBAction func Goal1(_ sender: Any) {
        lot.animationView.setAnimation(named: "lottie_gift_box")
        lot.animationView.play()
    }
    
    @IBAction func Goal2(_ sender: Any) {
        lot.animationView.setAnimation(named: "lottie_lama_cool")
        lot.animationView.play()
    }
    
    @IBAction func Goal3(_ sender: Any) {
        lot.animationView.setAnimation(named: "lottie_great_work")
        lot.animationView.play()
    }
    
    @IBAction func Goal4(_ sender: Any) {
        lot.animationView.setAnimation(named: "lottie_ufo")
        lot.animationView.play()
    }
    
    @IBAction func Goal5(_ sender: Any) {
        lot.animationView.setAnimation(named: "lottie_star_dark")
        lot.animationView.play()
    }
    
    @IBAction func Goal6(_ sender: Any) {
        lot.animationView.setAnimation(named: "lottie_spinny_stars")
        lot.animationView.play()
    }
    
    @IBAction func Goal7(_ sender: Any) {
        lot.animationView.setAnimation(named: "lottie_tiny_asian_hearts")
        lot.animationView.play()
    }
    
    @IBAction func Goal8(_ sender: Any) {
        lot.animationView.setAnimation(named: "lottie_high_five")
        lot.animationView.play()
    }
    
    @IBAction func Goal9(_ sender: Any) {
        lot.animationView.setAnimation(named: "lottie_bad_whale_whale")
        lot.animationView.play()
    }
    
    @IBAction func Goal10(_ sender: Any) {
        lot.animationView.setAnimation(named: "lottie_bad_whale_whale")
        lot.animationView.play()
    }
    
    @IBAction func Goal11(_ sender: Any) {
        lot.animationView.setAnimation(named: "lottie_bad_whale_whale")
        lot.animationView.play()
    }
    
    @IBAction func Goal12(_ sender: Any) {
        lot.animationView.setAnimation(named: "lottie_bad_whale_whale")
        lot.animationView.play()
    }
    
}
