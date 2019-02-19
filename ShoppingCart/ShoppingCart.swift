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
    var itemID : String?
    var exitMenu : Bool!
    var itemList = Array<String>()
    var osAndFeature = (OS:("iOS","Android"), SF:("Facial Recogination","Fingerprint Scanner"))
//    var apple = ["Iphone x","Apple",osAndFeature.OS.0,"5.8",osAndFeature.SF.0,"256"]
    
    func showListOfItems(){
        itemList.append("1- Iphone X")
        itemList.append("2- Samsung S9")
        itemList.append("3- Mi MIX 3")
        itemList.append("4- Google Pixel 3")
        itemList.append("5- OnePlus 6T")
        itemList.append("6- Huawei Mate 10")
        itemList.append("7- Exit")
        repeat{
        for v in itemList{
            print(v)
        }
        let userSelectedItem = Int(readLine()!)!
        switch userSelectedItem{
        case 1:
            print("\nProduct details \(itemList[0])- \nBrand: Apple \nOperating system: \(osAndFeature.OS.0) \nScreen size: 5.8 inches screen \nSecurity features: \(osAndFeature.SF.0) \nStorage capacity: 256 GB")
            self.itemID = "IPX"
            break
        case 2:
            print("\nProduct details \(itemList[1])- \nBrand: Samsung \nOperating system: \(osAndFeature.OS.1) \nScreen size: 5.8 inches screen \nSecurity features: \(osAndFeature.SF.0), \(osAndFeature.SF.1) \nStorage capacity: 128 GB")
            self.itemID = "S9"
            break
        case 3:
            print("\nProduct details \(itemList[2])- \nBrand: Xiaomi \nOperating system: \(osAndFeature.OS.1) \nScreen size: 6.3 inches screen \nSecurity features: \(osAndFeature.SF.1) \nStorage capacity: 64 GB")
            self.itemID = "MX3"
            break
        case 4:
            print("\nProduct details \(itemList[3])- \nBrand: Google \nOperating system: \(osAndFeature.OS.1) \nScreen size: 5.0 inches screen \nSecurity features: \(osAndFeature.SF.0), \(osAndFeature.SF.1) \nStorage capacity: 64 GB")
            self.itemID = "PI3"
            break
        case 5:
            print("\nProduct details \(itemList[4])- \nBrand: OnePlus \nOperating system: \(osAndFeature.OS.1) \nScreen size: 6.4 inches screen \nSecurity features: \(osAndFeature.SF.0), \(osAndFeature.SF.1) \nStorage capacity: 128 GB")
            self.itemID = "OP6"
            break
        case 6:
            print("\nProduct details \(itemList[5])- \nBrand: Huawei \nOperating system: \(osAndFeature.OS.1) \nScreen size: 6.0 inches screen \nSecurity features: \(osAndFeature.SF.0) \nStorage capacity: 256 GB")
            self.itemID = "HM10"
            break
        case 7:
            exitMenu = false
            break
        default:
            print("Invalid option selected.\n")
        }
            if userSelectedItem <= 6{
                exitMenu = addToCart()
            }
        }while(exitMenu)
    }
    
    func addToCart() -> Bool{
        print("\nAdd to Cart? (Y/N)")
        let addToCart = readLine()!.lowercased()
        if addToCart == "y"{
            print("Product successfully added to cart. Please select the quantity of product.")
            return false
            //quantity
        }else{
            return true
        }
    }
    
}
