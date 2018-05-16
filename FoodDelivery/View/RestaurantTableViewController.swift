//
//  RestaurantTableViewController.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/12/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
//    var restaurants: [Restaurant] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let alert = UIAlertController(title: UserDefaults.standard.string(forKey: "hovaten"), message: "Chúng Tôi Đang Có Chương Trình Giảm Giá Cho Khách Hàng Mới 50% Và Khách Hàng Trên 5 Năm Với 2 Món Ăn Miễn Phí.Hãy Nhanh Tay Đặt Món Để NHận Ưu Đãi Và Thưởng THức Những Món Ăn Dinh Dưỡng Trong Mùa Hè Này", preferredStyle: UIAlertControllerStyle.alert)

        alert.addAction(UIAlertAction(title: "Đóng", style: UIAlertActionStyle.cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
//        DataServices.shared.getDataRestaurant {[weak self] restaurants in
//            self?.restaurants = restaurants
//            self?.tableView.reloadData()
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataServices.shared.restaurants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! RestaurantViewCell
            cell.labelRestaurant.text =  DataServices.shared.restaurants[indexPath.row].name
            cell.photoRestaurant.image = UIImage(named: DataServices.shared.restaurants[indexPath.row].photo)
            
        return cell
    }
    
       
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        DataServices.shared.restaurantCodeSelected = DataServices.shared.restaurants[indexPath.row].restaurantCode
        UserDefaults.standard.set(DataServices.shared.restaurants[indexPath.row].name, forKey: "name")
        UserDefaults.standard.set(DataServices.shared.restaurants[indexPath.row].photo, forKey: "photo")
        UserDefaults.standard.set(DataServices.shared.restaurants[indexPath.row].adress, forKey: "adress")
        UserDefaults.standard.set(DataServices.shared.restaurants[indexPath.row].time, forKey: "time")
        UserDefaults.standard.set(DataServices.shared.restaurants[indexPath.row].properties, forKey: "properties")
    }

    @IBAction func showButton(_ sender: UIButton) {
        
    }
    
    

}
