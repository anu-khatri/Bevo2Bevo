//
//  PurchasedStats.swift
//  Bevo2Bevo
//
//  Created by Priyanka Sadagopan on 2/3/24.
//

import Foundation

class PurchasedStats {
    var totalPounds: Int
    var articlesOfClothingPurchased: Int
    var articlesOfClothingLeft: Int
    var articlesOfFoodPurchased: Int
    var articlesOfFoodLeft: Int
    
    init(totalPounds: Int, articlesOfClothingPurchased: Int, articlesOfClothingLeft: Int, articlesOfFoodPurchased: Int, articlesOfFoodLeft: Int) {
        self.totalPounds = totalPounds
        self.articlesOfClothingPurchased = articlesOfClothingPurchased
        self.articlesOfClothingLeft = articlesOfClothingLeft
        self.articlesOfFoodPurchased = articlesOfFoodPurchased
        self.articlesOfFoodLeft = articlesOfFoodLeft
    }
}
