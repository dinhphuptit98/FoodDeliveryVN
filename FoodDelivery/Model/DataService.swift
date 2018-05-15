//
//  DataService.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/12/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit
typealias DIC = Dictionary<AnyHashable,AnyObject>
class DataServices {
    static let shared: DataServices = DataServices()
    private var _cities : [City]?
    
    var cityCodeSelected : Int?
    
    var cities : [City] {
        set {
            _cities = newValue
        }
        get{
            if _cities == nil {
                getDataCities()
            }
            return _cities ?? []
        }
    }
    func getDataCities() {
        _cities = []
        guard let dictionary = getDataFromPlist(plist: "Cities.plist") else { return }
        guard let cityDictionaries = dictionary["Cities"] as? [DIC] else { return }
        for cityDictionary in cityDictionaries {
            if let city = City(dictionary: cityDictionary) {
                _cities?.append(city)
            }
        }
    }
    
    private var _districts: [District]?
    var districts: [District] {
        set {
            _districts = newValue
        }
        get {
            if _districts == nil {
                getDataDistricts()
            }
            return _districts == nil ? [] : (_districts ?? []).filter({ $0.cityCode == cityCodeSelected!})
        }
    }
    func getDataDistricts() {
        _districts = []
        guard let dictionary = getDataFromPlist(plist: "Districts.plist") else { return  }
        guard let districtsDictionaries = dictionary["Districts"] as? [DIC] else { return }
        for districtsDictionary in districtsDictionaries {
            if let district = District(dictionary: districtsDictionary) {
                _districts?.append(district)
            }
        }
    }
    
//    func getDataRestaurant(complete: @escaping([Restaurant])->Void) {
//        var restaurants: [Restaurant] = []
//        DispatchQueue.global().async {[unowned self] in
//            guard let dictionary = self.getDataFromPlist(plist: "Restaurant.plist") else { return  }
//            guard let restaurantDictionaries = dictionary["Restaurants"] as? [DIC] else { return }
//
//            for restaurantDictionary in restaurantDictionaries {
//                if let restaurant = Restaurant(dictionary: restaurantDictionary) {
//                    restaurants.append(restaurant)
//                }
//            }
//            DispatchQueue.main.async {
//                complete(restaurants)
//            }
//        }
//    }
    private var _restaurants: [Restaurant]?
    var restaurants : [Restaurant] {
        set {
            _restaurants = newValue
        }
        get {
            if _restaurants == nil {
                getDataRestaurant()
            }
            return _restaurants ?? []
        }
    }
    
    func getDataRestaurant() {
        _restaurants =  []
        guard let dictionary = getDataFromPlist(plist: "Restaurant.plist") else { return  }
        guard let restaurantsDictionaries = dictionary["Restaurants"] as? [DIC] else { return }
        for restaurantsDictionary in restaurantsDictionaries {
            if let restaurant = Restaurant(dictionary: restaurantsDictionary) {
                _restaurants?.append(restaurant)
            }
        }
    }
    // PLIST FILE
    func getDataFromPlist(plist: String) -> DIC? {
        var results: DIC?
        let fileNameComponents = plist.components(separatedBy: ".")
        guard let filePath = Bundle.main.path(forResource: fileNameComponents.first ?? "", ofType: fileNameComponents.last ?? "") else { return nil }
        guard FileManager.default.fileExists(atPath: filePath) == true else {return nil}
        guard let data = FileManager.default.contents(atPath: filePath) else { return nil }
        do {
            guard let root = try PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? DIC else {return nil}
            results = root
        } catch  {
            print("PropertyListSerialization Error")
        }
        return results
    }
}
