//
//  REGISTERViewController.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/15/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class REGISTERViewController: UIViewController , UITextFieldDelegate {
    
    @IBOutlet weak var hovatenText: UITextField!
    @IBOutlet weak var numberPhoneText: UITextField!
    @IBOutlet weak var dangky: UIButton!
    
    let number = Int(arc4random_uniform(UInt32(1000000000)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hovatenText.delegate = self
        numberPhoneText.text = String(number)
        
        
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if hovatenText.text != "" && numberPhoneText.text != "" {
            dangky.isEnabled = true
            UserDefaults.standard.set(hovatenText.text, forKey: "hovaten")
            UserDefaults.standard.set(numberPhoneText.text, forKey: "numberCode")
           
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
}
