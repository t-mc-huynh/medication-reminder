//
//  TableViewController.swift
//  medication-reminder
//
//  Created by Tina Huynh on 3/2/19.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var drug1: MedicationRecord = MedicationRecord(name: "Lorazepam", dose: 0.5, qty: 1, doseType: "MG", doseForm: "TAB", warnings: ["Avoid taking with alcohol", "Can cause drowsiness"], nickname: "Calming Pill", scheduledTime: "13:00", frequency: 1, totalQty: 30, refills:2, missedDosage: 0)
    var drug2: MedicationRecord = MedicationRecord(name: "Zopiclone", dose:5.0, qty: 1,doseType:"MG", doseForm:"TAB", warnings: ["Avoid taking with alcohol"], nickname: "Sleeping Pill", scheduledTime:"22:00", frequency:1, totalQty:30, refills: 2, missedDosage: 0)
    var drug3: MedicationRecord = MedicationRecord(name:"Escitalopram oxalate (Cipralex)", dose:20, qty:30, doseType:"MG", doseForm:"TAB", warnings:[], nickname:"E", scheduledTime: "07:00", frequency: 1, totalQty: 30, refills:3, missedDosage: 0)
    
    var medicine: [MedicationRecord]!
    var medicationsData: Medications = Medications()
    var medicationsList: [Medication] = []
    var medRecordList: [MedicationRecord] = []
    var new_Med : MedicationRecord!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath) as UITableViewCell
        
        new_Med = drug1
        medRecordList.append(new_Med)
        
        cell.textLabel?.text = medicationsList[indexPath.row].getName()
        
        
        return cell
    }
    
//  checkmark swipe
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .destructive, title: "Check") { (action, view, completion) in
            completion(true)
        }

        action.image = #imageLiteral(resourceName: "check")
        action.backgroundColor = .green


        return UISwipeActionsConfiguration(actions: [action])
    }
    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath) as UITableViewCell
//        cell.tintColor = UIColor.red
//
//        cell.accessoryType = .checkmark
//
//        //cell.tintColor = UIColor.init(named: "red")
//
//        return cell
//    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
