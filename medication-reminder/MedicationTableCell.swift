//
//  MedicationTableCell.swift
//  medication-reminder
//
//  Created by John Lee on 2019-03-02.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import Foundation

class MedicationTableCell {
    enum ScheduleType {
        case MORNING
        case NOON
        case EVENING
        case BEDTIME
        case EXTRA
    }
    
    var name: String
    var nickname: String
    var scheduleType: ScheduleType
    var frequency: Int
    var dose: Float
    var doseForm: String
    
    
    public init(name: String, nickname: String, scheduleType: ScheduleType) {
        self.name = name
        self.nickname = nickname
        self.scheduleType = scheduleType
        self.frequency =
    }
}
