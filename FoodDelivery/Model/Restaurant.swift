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
    var photo : String
    init(restaurantCode : Int , name : String , time : String , adress : String , properties : String,photo : String) {
        self.restaurantCode = restaurantCode
        self.name = name
        self.time = time
        self.adress = adress
        self.properties = properties
        self.photo = photo
    }
    
    convenience init?(dictionary : DIC) {
        let photo = dictionary["photo"] as? String ?? ""
        let restaurantCode = dictionary["RestaurantCode"]  as? Int ?? 0
        let name = dictionary["NameRestaurant"] as? String ?? ""
        let time = dictionary["Time"] as? String ?? ""
        let adress = dictionary["Adress"] as? String ?? ""
        let properties = dictionary["Properties"] as? String ?? ""
        self.init(restaurantCode: restaurantCode, name: name , time : time , adress : adress , properties : properties,photo : photo)
    }
}

