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
        guard let cityCode = dictionary["CityCode"] as? Int,let name = dictionary["Name"] as? String else { return nil }
        self.init(name: name, cityCode: cityCode)
    }
}
