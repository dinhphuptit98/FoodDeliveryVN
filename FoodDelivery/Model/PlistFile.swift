//
//  PlistFile.swift
//  FoodDelivery
//
//  Created by dinhphu98 on 5/12/18.
//  Copyright © 2018 dinhphu98. All rights reserved.
//


import Foundation

typealias DIC = Dictionary<AnyHashable,Any>

class PlistService {
    
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
