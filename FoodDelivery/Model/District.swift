//
//  District.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/12/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class District {
    var cityCode : Int
    var districtsCode : Int
    var name : String
    
    init(cityCode : Int,districtsCode : Int , name : String){
        self.cityCode = cityCode
        self.districtsCode = districtsCode
        self.name = name
    }
    
    convenience init?(dictionary : DIC){
        guard let cityCode = dictionary["CityCode"] as? Int , let districtsCode = dictionary["DictrictsCode"] as? Int, let name = dictionary["Name"] as? String else { return nil }
        self.init(cityCode: cityCode, districtsCode: districtsCode, name: name)
    }
}

