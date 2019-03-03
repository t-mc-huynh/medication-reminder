//
//  ViewController.swift
//  medication-reminder
//
//  Created by Tina Huynh on 3/1/19.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    var drug1: MedicationRecord = MedicationRecord(name: "Lorazepam", dose: 0.5, qty: 1, doseType: "MG", doseForm: "TAB", warnings: ["Avoid taking with alcohol", "Can cause drowsiness"], nickname: "Calming Pill", scheduledTime: "13:00", frequency: 1, totalQty: 30, refills:2)
    var drug2: MedicationRecord = MedicationRecord(name: "Zopiclone",dose:5.0, qty: 1,doseType:"MG", doseForm:"TAB",warnings:["Avoid taking with alcohol"], nickname:"Sleeping Pill", scheduledTime:"22:00", frequency:1, totalQty:30, refills: 2)
    var drug3: MedicationRecord = MedicationRecord(name:"Escitalopram oxalate (Cipralex)",dose:20, qty:30, doseType:"MG", doseForm:"TAB", warnings:[], nickname:"E", scheduledTime:"07:00",frequency: 1, totalQty: 30, refills:3)
    
    var medicationsData: Medications = Medications()
    var medicationsList: [Medication] = []
    var medRecordList: [MedicationRecord] = []
    //    var tableView: UITableView = UITableView()
    // cell reuse id (cells that scroll out of view can be reused)
    let cellReuseIdentifier = "drug_search_cell"

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

    @IBOutlet weak var drugSearchTable: UITableView!
    @IBOutlet weak var medRecordTable: UITableView!
    @IBOutlet weak var drugSearchField: UITextField!
    @IBOutlet weak var languagePicker: UIPickerView!
    var pickerData: [String] = [String]()
    
    
    var userInput: String!
    //var list: Medications!
    
    @IBAction func medicationInput(_ sender: Any) {
        print(123)
    }
    
    @IBAction func medSearchButton(_ sender: UIButton) {
        print(999)
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var doseLabel: UILabel!
    @IBOutlet weak var freqLabel: UILabel!
    @IBOutlet weak var refillLabel: UILabel!
    @IBOutlet weak var qtyLabel: UILabel!
    @IBOutlet weak var totalQtyLabel: UILabel!
    @IBOutlet weak var missedDoseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register the table view cell class and its reuse id
//        self.drugSearchTable.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
//        self.languagePicker.delegate = self as UIPickerViewDelegate
//        self.languagePicker.dataSource = self as UIPickerViewDataSource
        
        pickerData = ["English", "Spanish", "Chinese", "French", "Vietnamese"]
        // Do any additional setup after loading the view, typically from a nib.
        
//        demoFunction()
        
//        drugSearchTable.delegate = self as? UITableViewDelegate
//        drugSearchTable.dataSource = self as? UITableViewDataSource
//        drugSearchField.addTarget(self, action: #selector(didButtonClick), for: .touchUpInside)
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

    @objc func demoFunction() {
        nameLabel.text = "Lorazepam"
        nicknameLabel.text = "Calming pill"
        doseLabel.text = "0.6"
        freqLabel.text = "1"
        refillLabel.text = "2"
        qtyLabel.text = "1"
        totalQtyLabel.text = "10"
        missedDoseLabel.text = "2"
    }
    
    let synthesizer = AVSpeechSynthesizer()
    
    let textToSpeech = "Testing sentence"

    @IBAction func textSpeechButton(_ sender: UIButton) {
        let utterance = AVSpeechUtterance(string: textToSpeech)
        synthesizer.speak(utterance)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }

    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.medicationsList.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = self.drugSearchTable.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
        
        // set the text from the data model
        cell.textLabel?.text = self.medicationsList[indexPath.row].getName()
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
    
    @IBAction func lottieDemoClick(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "RewardScreens", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "RewardScreen") as UIViewController
        present(vc, animated: true, completion: nil)
    }

    @IBAction func saveAndSubmit(_ sender: UIButton) {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
            let storyboard = UIStoryboard(name: "RewardScreens", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "RewardScreen1") as UIViewController
            self.present(vc, animated: true, completion: nil)
            print("hello")
        })
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
