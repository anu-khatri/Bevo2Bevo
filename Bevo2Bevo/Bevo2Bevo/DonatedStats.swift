//
//  DonatedStats.swift
//  Bevo2Bevo
//
//  Created by Priyanka Sadagopan on 2/3/24.
//

import Foundation

class DonatedStats {
    var totalPounds: Int
    var totalPoints: Int
    var periodProductPounds: Int
    
    init(totalPounds: Int, totalPoints: Int, periodProductPounds: Int) {
        self.totalPounds = totalPounds
        self.totalPoints = totalPoints
        self.periodProductPounds = periodProductPounds
    }
}
