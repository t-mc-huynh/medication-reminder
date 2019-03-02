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
    var name: String
    var doses: [Float]
    var doseType: String
    var doseForm: String
    var warnings: [String]
    var nickname: String
    var scheduledTime: UIDatePicker
    var frequency: Int
    
    public init(name: String, doses: [Float], doseType: String, doseForm: String, warnings: [String], nickname: String, scheduledTime: UIDatePicker, frequency: Int) {
        self.name = name
        self.doses = doses
        self.doseType = doseType
        self.doseForm = doseForm
        self.warnings = warnings
        self.nickname = nickname
        self.scheduledTime = scheduledTime
        self.frequency = frequency
    }
    
    public func getName() -> String { return self.name }
    public func getDoses() -> [Float] { return self.doses }
    public func getDoseType() -> String { return self.doseType }
    public func getDoseForm() -> String { return self.doseForm }
    public func getWarnings() -> [String] { return self.warnings }
    public func getNickname() -> String { return self.nickname }
    public func getScheduledTime() -> UIDatePicker { return self.scheduledTime }
    public func getFrequency() -> Int { return self.frequency }
    
    public func setName(name: String) { self.name = name }
    public func setDoses(doses: [Float]) { self.doses = doses }
    public func setDoseType(doseType: String) { self.doseType = doseType }
    public func setDoseForm(doseForm: String) { self.doseForm = doseForm }
    public func setWarnings(warnings: [String]) { self.warnings = warnings }
    public func setNickname(nickname: String) { self.nickname = nickname }
    public func setScheduledTime(scheduledTime: UIDatePicker) { self.scheduledTime = scheduledTime }
    public func setFrequency(frequency: Int) { self.frequency = frequency }
    
}
