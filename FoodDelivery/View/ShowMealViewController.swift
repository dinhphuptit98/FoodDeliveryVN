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
    @IBOutlet weak var goal: UITextView!
    @IBOutlet weak var method: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = UserDefaults.standard.string(forKey: "nameMeal")
        imageMeal.image = UIImage(named: UserDefaults.standard.string(forKey: "photo")!)
        mealName.text = UserDefaults.standard.string(forKey: "nameMeal")
        mealTotal.text = UserDefaults.standard.string(forKey: "totalMeal")
        goal.text = UserDefaults.standard.string(forKey: "goal")
        method.text = UserDefaults.standard.string(forKey: "method")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func OderButton(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: UserDefaults.standard.string(forKey: "hovaten"), message: "CẢM ƠN BẠN , BẠN ĐÃ ĐẶT MÓN       _____ \(UserDefaults.standard.string(forKey: "nameMeal")!) _____ THÀNH CÔNG ,KÍNH CHÚC BẠN VÀ NGƯỜI THÂN DÙNG BỮA VUI VẺ VÀ NGON MIỆNG ", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
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
