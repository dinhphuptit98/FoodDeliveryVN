//
//  Restaurant.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/12/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class Restaurant {
    
    var time : String
    var adress : String
    var properties : String
    var restaurantCode : Int
    var name : String
    var urlRestaurant : String
    init(restaurantCode : Int , name : String , urlRestaurant : String , time : String , adress : String , properties : String) {
        self.restaurantCode = restaurantCode
        self.name = name
        self.urlRestaurant = urlRestaurant
        self.time = time
        self.adress = adress
        self.properties = properties
    }
    
    convenience init?(dictionary : DIC) {
        let restaurantCode = dictionary["RestaurantCode"]  as? Int ?? 0
        let name = dictionary["NameRestaurant"] as? String ?? ""
        let urlRestaurant = dictionary["URL"] as? String ?? ""
        let time = dictionary["Time"] as? String ?? ""
        let adress = dictionary["Adress"] as? String ?? ""
        let properties = dictionary["Properties"] as? String ?? ""
        self.init(restaurantCode: restaurantCode, name: name , urlRestaurant : urlRestaurant , time : time , adress : adress , properties : properties)
    }
}

