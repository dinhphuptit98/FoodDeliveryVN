//
//  ShowRestaurantViewController.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/15/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class ShowRestaurantViewController: UIViewController {

    var string : String?
    
    @IBOutlet weak var photoRestaurant: UIImageView!
    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var propertiesLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = UserDefaults.standard.string(forKey: "name")
        adressLabel.text = UserDefaults.standard.string(forKey: "adress")
        timeLabel.text =  UserDefaults.standard.string(forKey: "time")
        propertiesLabel.text =  UserDefaults.standard.string(forKey: "properties")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
