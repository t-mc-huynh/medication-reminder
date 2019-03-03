//
//  Medication.swift
//  medication-reminder
//
//  Created by John Lee on 2019-03-02.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import Foundation

class Medication {
    // represents a single medication
    var name: String            // "Atorvastatin"
    var doses: [Float]          // [0.5, 1.0]
    var dosageType: String      // "MG"
    var dosageForm: String      // "TAB"
    var warnings: [String]      // ["Avoid taking with alcohol"]

    public init(name: String, doses: [Float], dosageType: String, dosageForm: String, warnings: [String]) {
        self.name = name
        self.doses = doses
        self.dosageType = dosageType
        self.dosageForm = dosageForm
        self.warnings = warnings
    }
    
    public func getName() -> String { return self.name }
    public func getDoses() -> [Float] { return self.doses }
    public func getDosageType() -> String { return self.dosageType }
    public func getDosageForm() -> String { return self.dosageForm }
    public func getWarnings() -> [String] { return self.warnings }
}
