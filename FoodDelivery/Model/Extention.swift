//
//  Extention.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/14/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//
import UIKit

extension UIImageView {
    func download (from urlString : String){
        if let url = URL(string : urlString) {
            DispatchQueue.global().async {
                if let data = try? Data(contentsOf : url){
                    DispatchQueue.main.async {
                        self.image = UIImage(data : data)
                    }
                }
            }
        }
    }
}

