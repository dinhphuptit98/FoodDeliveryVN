//
//  ShowMealViewController.swift
//  FoodDelivery
//
//  Created by dinhphu on 5/16/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class ShowMealViewController: UIViewController {
    @IBOutlet weak var imageMeal: UIImageView!
    @IBOutlet weak var mealName: UILabel!
    
    @IBOutlet weak var mealTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageMeal.download(from: UserDefaults.standard.string(forKey: "urlMeal")!)
        mealName.text = UserDefaults.standard.string(forKey: "nameMeal")
        mealTotal.text = UserDefaults.standard.string(forKey: "totalMeal")
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
