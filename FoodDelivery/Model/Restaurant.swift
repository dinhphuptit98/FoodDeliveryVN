//
//  Restaurant.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/12/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class Restaurant {
    var restaurantCode : Int
    var name : String
    var urlRestaurant : String
    init(restaurantCode : Int , name : String , urlRestaurant : String) {
        self.restaurantCode = restaurantCode
        self.name = name
        self.urlRestaurant = urlRestaurant
    }
    
    convenience init?(dictionary : DIC) {
        let restaurantCode = dictionary["RestaurantCode"]  as? Int ?? 0
        let name = dictionary["NameRestaurant"] as? String ?? ""
        let urlRestaurant = dictionary["URL"] as? String ?? ""
        self.init(restaurantCode: restaurantCode, name: name , urlRestaurant : urlRestaurant)
    }
}

