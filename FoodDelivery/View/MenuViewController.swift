//
//  MenuViewController.swift
//  FoodDelivery
//
//  Created by dinhphu on 5/21/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController ,UIImagePickerControllerDelegate , UINavigationControllerDelegate{

    @IBOutlet weak var photoMenu: UIImageView!
    @IBOutlet weak var yourName: UILabel!
    @IBOutlet weak var numberCode: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        yourName.text = UserDefaults.standard.string(forKey: "hovaten")
        numberCode.text = UserDefaults.standard.string(forKey: "numberCode")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // chon anh
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage
        photoMenu.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
       
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present( imagePickerController , animated: true, completion: nil)
    }
 
    @IBAction func clickButtonLogOut(_ sender: UIButton) {
        
        let alert = UIAlertController(title: UserDefaults.standard.string(forKey: "hovaten"), message: "Bạn có muốn đăng xuất không?", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Có", style: UIAlertActionStyle.default, handler: { _ in
            let application = UIApplication.shared.delegate as! AppDelegate
            let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let rootViewController = storyboard.instantiateViewController(withIdentifier: "LogOut") as! StartViewController
            let navigationController = UINavigationController(rootViewController: rootViewController)
            application.window?.rootViewController = navigationController
            
        }))
        alert.addAction(UIAlertAction(title: "Không", style: UIAlertActionStyle.cancel, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }
}
