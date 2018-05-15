//
//  City.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/12/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class City {
    var cityCode : Int
    var name : String
    
    init(name : String,cityCode : Int ) {
        self.cityCode = cityCode
        self.name = name
    }
    
    convenience init?(dictionary: DIC) {
        let cityCode = dictionary["CityCode"] as? Int ?? 0
        let name = dictionary["Name"] as? String ?? ""
        self.init(name: name, cityCode: cityCode)
    }
}
