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
    var photo : String
    var goal : String
    var method : String
    init(restaurantCode : Int,mealCode: Int,total : String,nameMeal : String,photo : String,goal : String,method : String) {
        self.restaurantCode = restaurantCode
        self.mealCode = mealCode
        self.total = total
        self.nameMeal = nameMeal
        self.photo = photo
        self.goal = goal
        self.method = method
    
    }
    convenience init?(dictionary : DIC){
        let goal = dictionary["Goal"] as? String ?? ""
        let method = dictionary["Method"] as? String ?? ""
        let photo = dictionary["New item"] as? String ?? ""
        let restaurantCode = dictionary["RestaurantCode"] as? Int ?? 0
        let mealCode = dictionary["MealCode"] as? Int ?? 0
        let total = dictionary["Total"] as? String ?? ""
        let nameMeal = dictionary["NameMeal"] as? String ?? ""
        self.init(restaurantCode: restaurantCode, mealCode: mealCode, total: total, nameMeal: nameMeal,photo : photo,goal : goal,method : method)
    }
}
