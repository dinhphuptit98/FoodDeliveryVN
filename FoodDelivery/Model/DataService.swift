//
//  DataService.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/12/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//

import UIKit

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
        guard let dictionary = PlistService().getDataFromPlist(plist: "Cities.plist") else { return }
        guard let cityDictionaries = dictionary["Cities"] as? [Dictionary<String,Any>] else { return }
        for cityDictionary in cityDictionaries {
            if let city = City(dictionary: cityDictionary) {
                _cities?.append(city)
            }
        }
    }
    
    private var _districts : [District]?
    
    var districts : [District] {
        set {
            _districts = newValue
        }
        get {
            if _districts == nil {
                getDataDistricts()
            }
            return _districts ?? []
//            : (_districts ?? []).filter({ $0.cityCode == cityCodeSelected!})
        }
    }
    func getDataDistricts() {
        _districts = []
        guard let dictionary = PlistService().getDataFromPlist(plist: "Districts.plist") else {return}
        guard let districtDictionaries = dictionary["Dictricts"] as? [Dictionary<String,Any>] else { return  }
        for dictricrtDictionary in districtDictionaries {
            if let district = District(dictionary : dictricrtDictionary) {
                _districts?.append(district)
            }
        }
    }
    
    private var _restaurant : [Restaurant]?
    
    var restaurant : [Restaurant] {
        set {
            _restaurant = newValue
        }
        get {
            if _restaurant == nil {
                getDataIPARestaurant()
            }
            return _restaurant ?? []
        }
    }
    func getDataIPARestaurant() {
        
    }
}
