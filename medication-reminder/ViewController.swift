//
//  ViewController.swift
//  medication-reminder
//
//  Created by Tina Huynh on 3/1/19.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var MOCK_MEDICATION_TUPLES: [(String, [Float], String, String, [String])]
    var EXAMPLE_MEDICATION_RECORDS: [(String, [Float], String, String, [String], String, UIDatePicker, Int)]

    @IBAction func infoButton(_ sender: Any) {
        
    }
//    
//    public init() {
//        MOCK_MEDICATION_TUPLES = [
//            ("Lorazepam (Ativan SL)", [0.5, 1, 2], "MG", "SL TAB", ["Avoid taking with alcohol", "Can cause drowsiness"]),
//            ("Zopiclone (Imovane)", [5.0, 7.5], "MG", "TAB", ["Avoid taking with alcohold"]),
//            ("Salbutamol Sulfate (Ventolin HFA)", [100], "MCRGM", "MDI", []),
//            ("Escitalopram oxalate (Cipralex)", [10, 20], "MG", "TAB", []),
//            ("Rifampin (Ridain)", [150, 300], "MG", "TAB", ["Avoid calcium, magnesium, aluminum, and irgon", "Avoid dairy products", "Avoid taking antacids"])
//        ]
//        super.init(coder: )!
//    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func medSearchInput(_ sender: UITextField) {
        
    }
    @IBAction func medSearchButton(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

