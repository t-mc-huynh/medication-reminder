//
//  ViewController.swift
//  medication-reminder
//
//  Created by Tina Huynh on 3/1/19.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var MOCK_MEDICATION_TUPLES: [(String, [Float], String, String, [String])] = []
    var EXAMPLE_MEDICATION_RECORDS: [(String, [Float], String, String, [String], String, UIDatePicker, Int)] = []
    
    @IBOutlet weak var languagePicker: UIPickerView!
    var pickerData: [String] = [String]()
    
    
    var userInput: String!
    //var list: Medications!
    
    
    @IBAction func medSearchButton(_ sender: UIButton) {
        
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
        
        self.languagePicker.delegate = self
        self.languagePicker.dataSource = self
        
        pickerData = ["English", "Spanish", "Chinese", "French", "Vietnamese"]
        // Do any additional setup after loading the view, typically from a nib.
        
        demoFunction()
    }
    
    @objc func demoFunction() {
        nameLabel.text = "Lorazepam"
        nicknameLabel.text = "Calming pill"
        doseLabel.text = "0.06"
        freqLabel.text = "1"
        refillLabel.text = "0"
        qtyLabel.text = "10"
        totalQtyLabel.text = "10"
        missedDoseLabel.text = "2"
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

}

