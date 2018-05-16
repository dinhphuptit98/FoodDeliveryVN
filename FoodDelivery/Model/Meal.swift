//
//  Meal.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/12/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class Meal {
    var restaurantCode : Int
    var mealCode : Int
    var total : String
    var nameMeal : String
    var urlMeal : String
    
    init(restaurantCode : Int,mealCode: Int,total : String,nameMeal : String,urlMeal : String) {
        self.restaurantCode = restaurantCode
        self.mealCode = mealCode
        self.total = total
        self.nameMeal = nameMeal
        self.urlMeal = urlMeal
    
    }
    convenience init?(dictionary : DIC){
        let restaurantCode = dictionary["RestaurantCode"] as? Int ?? 0
        let mealCode = dictionary["MealCode"] as? Int ?? 0
        let total = dictionary["Total"] as? String ?? ""
        let nameMeal = dictionary["NameMeal"] as? String ?? ""
        let urlMeal = dictionary["URL"] as? String ?? ""
        self.init(restaurantCode: restaurantCode, mealCode: mealCode, total: total, nameMeal: nameMeal, urlMeal: urlMeal)
    }
}
