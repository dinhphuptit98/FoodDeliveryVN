//
//  MealTableViewCell.swift
//  FoodDelivery
//
//  Created by NguyenDinhPhu on 5/16/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    @IBOutlet weak var photoMeal: UIImageView!
    @IBOutlet weak var nameMeal: UILabel!
    @IBOutlet weak var totalMeal: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
