//
//  ShoppingCart.swift
//  Group2_OnlineShopping
//
//  Created by Maninder Singh on 2019-02-17.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class ShoppingCart : UserDetails
{
    var shoppingCartId : Int!
    var itemID : Int!
    var itemListAndId = Array<String>()
    var osAndFeature = [String]()
    
    override init(){
        osAndFeature = [OS: ("iOS","Android"), SF: ("Facial Recogination","Fingerprint Scanner")]
    }
    
    func showListOfItems(){
        itemListAndId.append("1- Iphone X")
        itemListAndId.append("2- Samsung S9")
        itemListAndId.append("3- Mi MIX 3")
        itemListAndId.append("4- Google Pixel 3")
        itemListAndId.append("5- OnePlus 6T")
        itemListAndId.append("6- Huawei Mate 10")
        repeat{
        for v in itemListAndId{
            print(v)
        }
        let userSelectedItem = Int(readLine()!)!
        switch userSelectedItem{
        case 1:
            print("Product details- \nBrand: Apple \nOperating system: \(OS.0) \nScreen size: 5.8 inches screen \nSecurity features: \(SF.0) \nStorage capacity: 256 GB")
            break
        case 2:
            print("Product details- \nBrand: Samsung \nOperating system: \(OS.1) \nScreen size: 5.8 inches screen \nSecurity features: \(SF.0), \(SF.1) \nStorage capacity: 128 GB")
            break
        case 3:
            print("Product details- \nBrand: Xiaomi \nOperating system: \(OS.1) \nScreen size: 6.3 inches screen \nSecurity features: \(SF.1) \nStorage capacity: 64 GB")
            break
        case 4:
            print("Product details- \nBrand: Google \nOperating system: \(OS.1) \nScreen size: 5.0 inches screen \nSecurity features: \(SF.0), \(SF.1) \nStorage capacity: 64 GB")
            break
        case 5:
            print("Product details- \nBrand: OnePlus \nOperating system: \(OS.1) \nScreen size: 6.4 inches screen \nSecurity features: \(SF.0), \(SF.1) \nStorage capacity: 128 GB")
            break
        case 6:
            print("Product details- \nBrand: Huawei \nOperating system: \(OS.1) \nScreen size: 6.0 inches screen \nSecurity features: \(SF.0) \nStorage capacity: 256 GB")
            break
        default:
            print("Invalid option selected.\n")
        }
        }while(false)
    }
    
}
