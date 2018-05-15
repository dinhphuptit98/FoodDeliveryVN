//
//  RestaurantViewCell.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/15/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class RestaurantViewCell: UITableViewCell {
    @IBOutlet weak var photoRestaurant: UIImageView!
    @IBOutlet weak var labelRestaurant: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

     
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
