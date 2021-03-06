//
//  main.swift
//  Group2_OnlineShopping
//
//  Created by MacStudent on 2019-02-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

print("********* \nWelcome \n*********")
var customer = Customer()
var item = ShoppingCart()

var exit : String!
var userOption : Int?

repeat{
    print("\nPlease select an option: \n1 - Register \n2 - Login \n3 - Exit")
    userOption = Int(readLine()!)
    switch userOption{
    case 1:
        customer.Register()
        exit="n"
        break
    case 2:
        customer.Login()
        item.showListOfItems()
        exit="n"
        break
    case 3:
        print("Do you want to exit? (Y/N)")
        exit = readLine()!.lowercased()
        break
    default:
        print("Invalid option selected.\n")
        exit="n"
    }
}while(exit=="n")


