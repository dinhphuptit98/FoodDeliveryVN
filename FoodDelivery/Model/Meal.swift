//
//  Meal.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/12/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class Meal {
    var name : String
    var total : Int
    var photo : UIImage
    
    init(name : String , total : Int , photo : UIImage) {
        self.name = name
        self.total = total
        self.photo = photo
    }
}
