//
//  MedicationTableCell.swift
//  medication-reminder
//
//  Created by John Lee on 2019-03-02.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import Foundation
import UIKit

class MedicationTableCell {
    var name: String
    var nickname: String
    var scheduledTime: UIDatePicker
    var frequency: Int
    var dose: Float
    var doseForm: String
    var warnings: [String]
    
    public init(name: String, nickname: String, scheduledTime: UIDatePicker, frequency: Int, dose: Float, doseForm: String, warnings: [String]) {
        self.name = name
        self.nickname = nickname
        self.scheduledTime = scheduledTime
        self.frequency = frequency
        self.dose = dose
        self.doseForm = doseForm
        self.warnings = warnings
    }
}

extension MedicationTableCell {
    public class func getMockData() -> [MedicationTableCell] {
        return [
            
        ]
    }
}

