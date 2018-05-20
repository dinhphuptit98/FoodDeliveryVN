//
//  Protocol.swift
//  FoodDelivery
//
//  Created by dinhphu on 5/20/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import Foundation

protocol RestaurantViewCellDelegate: class {
    func tableView(didSelectedAt indexPath: IndexPath)
}
