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
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hovatenText.delegate = self
        numberPhoneText.delegate = self
        
        
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
            UserDefaults.standard.set(numberPhoneText.text, forKey: "sdt")
           
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
