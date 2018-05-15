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
        let cityCode = dictionary["CityCode"] as? Int ?? 0
        let districtsCode = dictionary["DictrictsCode"] as? Int ?? 0
        let name = dictionary["Name"] as? String ?? ""
        self.init(cityCode: cityCode, districtsCode: districtsCode, name: name)
    }
}

