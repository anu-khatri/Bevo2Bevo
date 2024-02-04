//
//  UserProfile.swift
//  Bevo2Bevo
//
//  Created by Priyanka Sadagopan on 2/3/24.
//

import Foundation

class User {
    var name: String
    var email: String
    var eidPwdCombo: EidAndPassword
    var purchasedInfo: PurchasedStats
    var donatedInfo: DonatedStats
    
    init(name: String, email: String, eidPwdCombo: EidAndPassword, purchasedInfo: PurchasedStats, donatedInfo: DonatedStats) {
        self.name = name
        self.email = email
        self.eidPwdCombo = eidPwdCombo
        self.purchasedInfo = purchasedInfo
        self.donatedInfo = donatedInfo
    }
    
    
        
}
