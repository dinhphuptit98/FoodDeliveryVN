//
//  REGISTERViewController.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/15/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class REGISTERViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var hovatenText: UITextField!
    @IBOutlet weak var numberPhoneText: UITextField!
    @IBOutlet weak var dangkyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hovatenText.delegate = self
        numberPhoneText.delegate = self
        dangkyButton.isEnabled = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func dangkyBt(_ sender: UIButton) {
        sender.isEnabled = false
        if hovatenText.text != nil && numberPhoneText.text != nil {
            dangkyButton.isEnabled = true
            sender.isEnabled = true
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hovatenText.resignFirstResponder()
        numberPhoneText.resignFirstResponder()
        return true
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
