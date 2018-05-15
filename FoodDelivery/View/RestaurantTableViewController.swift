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
//        DataServices.shared.getDataRestaurant {[weak self] restaurants in
//            self?.restaurants = restaurants
//            self?.tableView.reloadData()
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickButtonLogOut(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "UIAlertController", message: "Bạn có muốn đăng xuất không?", preferredStyle: UIAlertControllerStyle.alert)
        
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
            cell.photoRestaurant.download(from: String(DataServices.shared.restaurants[indexPath.row].urlRestaurant))
            
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UserDefaults.standard.set(DataServices.shared.restaurants[indexPath.row].name, forKey: "name")
        UserDefaults.standard.set(DataServices.shared.restaurants[indexPath.row].urlRestaurant, forKey: "urlRestaurant")
        UserDefaults.standard.set(DataServices.shared.restaurants[indexPath.row].adress, forKey: "adress")
        UserDefaults.standard.set(DataServices.shared.restaurants[indexPath.row].time, forKey: "time")
        UserDefaults.standard.set(DataServices.shared.restaurants[indexPath.row].properties, forKey: "properties")
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
