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
    var MOCK_MEDICATION_TUPLES: [(String, [Float], String, String, [String])] = []
    var EXAMPLE_MEDICATION_RECORDS: [(String, [Float], String, String, [String], String, UIDatePicker, Int)] = []
    var medicationsData: Medications = Medications()
    var medicationsList: [Medication] = []
    //    var tableView: UITableView = UITableView()
    // cell reuse id (cells that scroll out of view can be reused)
    let cellReuseIdentifier = "drug_search_cell"
    
    //MARK: properties
    //        @IBOutlet var tableView: UITableView!
    //    @IBAction func drugSearchInput(_ sender: UITextField) {
    //        print("here1")
    //    }
    //
    
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
        self.drugSearchTable.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        self.languagePicker.delegate = self as UIPickerViewDelegate
        self.languagePicker.dataSource = self as UIPickerViewDataSource
        
        pickerData = ["English", "Spanish", "Chinese", "French", "Vietnamese"]
        // Do any additional setup after loading the view, typically from a nib.
        
        demoFunction()
        
        drugSearchTable.delegate = self as? UITableViewDelegate
        drugSearchTable.dataSource = self as? UITableViewDataSource
        drugSearchField.addTarget(self, action: #selector(didButtonClick), for: .touchUpInside)
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
    
    @objc func didButtonClick(_ sender: UIButton) {
        // your code goes here
        print("test")
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

    //MARK: actions
    //    @IBAction func infoButton(_ sender: Any) {
    //    }
    
    
    //    @IBAction func medSearchInput(_ sender: UITextField) {
    //            print("here1")
    //        if (sender.text != nil) {
    //            medicationsList = medicationsData.findMatchingMedications(searchTerm: sender.text ?? "")
    //            print("here")
    //            for (med in medicationsList) {
    
    //            }
    // TODO: Update Table with medicationsData
    //        }
    //    }
}
