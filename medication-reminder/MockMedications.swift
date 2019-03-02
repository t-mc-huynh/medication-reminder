//
//  MockMedications.swift
//  medication-reminder
//
//  Created by John Lee on 2019-03-02.
//  Copyright © 2019 Tina Huynh. All rights reserved.
//

import Foundation

class MockMedications {

    var MOCK_MEDICATION_TUPLES: [(String, String)]
    
    public init () {
        MOCK_MEDICATION_TUPLES = [
            ("tree", "bear"),
            ("tree", "bear")
        ]
    }
    
    public func getMockMedications() -> [(String, String)] {
        return MOCK_MEDICATION_TUPLES
    }
    
}
