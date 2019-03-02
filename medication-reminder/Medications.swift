//
//  MockMedications.swift
//  medication-reminder
//
//  Created by John Lee on 2019-03-02.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import Foundation
import UIKit

class Medications {
    // Responsible for managing the local database of medications
    
    var MOCK_MEDICATION_TUPLES: [(String, [Float], String, String, [String])]

    public init () {
        MOCK_MEDICATION_TUPLES = [
            ("Lorazepam (Ativan SL)", [0.5, 1, 2], "MG", "SL TAB", ["Avoid taking with alcohol", "Can cause drowsiness"]),
            ("Zopiclone (Imovane)", [5.0, 7.5], "MG", "TAB", ["Avoid taking with alcohol"]),
            ("Salbutamol Sulfate (Ventolin HFA)", [100], "MCRGM", "MDI", []),
            ("Escitalopram oxalate (Cipralex)", [10, 20], "MG", "TAB", []),
            ("Ramipril (Altact)", [1.25, 2.5, 5, 10], "MG", "CAP", []),
            ("Rifampin (Rifadin)", [150, 300], "MG", "TAB", ["Avoid calcium, magnesium, aluminum, and iron", "Avoid dairy products", "Avoid taking antacids"])
        ]
    }
    
    public func getMockMedications() -> [(String, [Float], String, String, [String])] {
        return MOCK_MEDICATION_TUPLES
    }
    
    public func findMatchingMedications(searchTerm: String) ->  [(String, [Float], String, String, [String])] {
        var result = [(String, [Float], String, String, [String])]()
        
        for medication in getMockMedications() {
            if (medication.0.lowercased().range(of: searchTerm.lowercased()) != nil) {
                result.append(medication)
            }
        }
        
        return result;
    }

}
