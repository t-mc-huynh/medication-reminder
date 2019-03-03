//
//  ViewController.swift
//  medication-reminder
//
//  Created by Tina Huynh on 3/1/19.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register the table view cell class and its reuse id
        self.drugSearchTable.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        // (optional) include this line if you want to remove the extra empty cell divider lines
        // self.tableView.tableFooterView = UIView()
        
        // This view controller itself will provide the delegate methods and row data for the table view.
        drugSearchTable.delegate = self
        drugSearchTable.dataSource = self
        drugSearchField.addTarget(self, action: #selector(didButtonClick), for: .touchUpInside)    }
    
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
    
//    @IBAction func drugSearchField(_ sender: UITextField) {
//        print("here1")
//    }
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

