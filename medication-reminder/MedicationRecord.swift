//
//  MedicationRecord.swift
//  medication-reminder
//
//  Created by John Lee on 2019-03-02.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import Foundation
import UIKit

class MedicationRecord {
    var name: String                // "Zopiclone (Imovane)"
    var dose: Float                 // 7.5
    var qty: Float                  // 1   --> as in "1" pill
    var doseType: String            // "MG"
    var doseForm: String            // "TAB"
    var warnings: [String]          // ["Avoid taking with alcohol"]
    var nickname: String            // "Z"
    var scheduledTime: String // UIDatePicker
    var frequency: Int              // 1   --> as in "every 1 day(s)"
    var totalQty: Float             // 30  --< as in 30 pills for this Rx
    var refills: Int                // 3
    var missedDosage: Int           // 0   --> acts as a counter that starts at 0
    
    public init(name: String, dose: Float, qty: Float, doseType: String, doseForm: String, warnings: [String], nickname: String, scheduledTime: String, frequency: Int, totalQty: Float, refills: Int, missedDosage: Int) {
        self.name = name
        self.dose = dose
        self.qty = qty
        self.doseType = doseType
        self.doseForm = doseForm
        self.warnings = warnings
        self.nickname = nickname
        self.scheduledTime = scheduledTime
        self.frequency = frequency
        self.totalQty = totalQty
        self.refills = refills
        self.missedDosage = missedDosage
    }
    
    public func getName() -> String { return self.name }
    public func getDose() -> Float { return self.dose }
    public func getQty() -> Float { return self.qty }
    public func getDoseType() -> String { return self.doseType }
    public func getDoseForm() -> String { return self.doseForm }
    public func getWarnings() -> [String] { return self.warnings }
    public func getNickname() -> String { return self.nickname }
    public func getScheduledTime() -> String { return self.scheduledTime }
    public func getFrequency() -> Int { return self.frequency }
    public func getTotalQty() -> Float { return self.totalQty }
    public func getRefills() -> Int { return self.refills }
    public func getMissedDosage() -> Int { return self.missedDosage }
    
    public func setQty(qty: Float) { self.qty = qty }
    public func setWarnings(warnings: [String]) { self.warnings = warnings }
    public func setNickname(nickname: String) { self.nickname = nickname }
    public func setScheduledTime(scheduledTime: String) { self.scheduledTime = scheduledTime }
    public func setFrequency(frequency: Int) { self.frequency = frequency }
    public func setTotalQty(totalQty: Float) { self.totalQty = totalQty }
    public func setRefills(refills: Int) { self.refills = refills }
    public func setMissedDosage(missedDosage: Int) { self.missedDosage = missedDosage }
}
