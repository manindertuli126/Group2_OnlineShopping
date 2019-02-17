//
//  Customer.swift
//  Group2_OnlineShopping
//
//  Created by MacStudent on 2019-02-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Customer: UserDetails
{
    var address : String!
    var phone : Int!
    var email : String!
    
    func Register(){
        print("Please enter Full Name:")
        var FN = readLine()!
        while FN.count<2 || FN.elementsEqual(" "){
            print("Please enter Full Name:")
            FN = readLine()!
        }
        super.fullName = FN
        
        print("Please enter Login User name:")
        var LU = readLine()!
        while LU.count<6{
            print("Username should be greater than 6 letters")
            LU = readLine()!
        }
        super.loginUser = LU
        
        print("Please enter Password:")
        var LUP = readLine()!
        while !(LUP.verifyPassword()){
            print("Password must contain one uppercase, one digit and one lowercase.")
            LUP = readLine()!
        }
        super.loginUserPassword = LUP
        
        print("Please enter your Address:")
        var A = readLine()!
        self.address = A
        while A.count<2 || A.elementsEqual(" "){
            print("Please enter your fullName:")
            A = readLine()!
        }
        
        print("Please enter your 10 digit Phone Number:")
        var P = Int(readLine()!)
        while P!<999999999 || P!>9999999999{
            print("Phone number must be of 10 digits")
            P = Int(readLine()!)
        }
        self.phone = P
        
        print("Please enter email ID:")
        var E = readLine()!
        while !(E.verifyEmail()){
            print("Please enter a valid email ID.")
            E = readLine()!
        }
        self.email = E
        print("Username: \(FN) is registered successfully.")
//        super.init(loginUser:loginUser, fullName:fullName, loginUserPassword:loginUserPassword)
    }
    
    func Login(){
        print("Login User:")
        var validLoginUser = readLine()!
        while !(super.loginUser == validLoginUser){
            print("Invalid username entered.")
            validLoginUser = readLine()!
        }
        print("Password:")
        var validLoginPassword = readLine()!
        while !(super.loginUserPassword==validLoginPassword){
            print("Invalid password entered.")
            validLoginPassword = readLine()!
        }
        print("Login successful. Welcome \(validLoginUser)")
    }
    
    func displayUserInfo(){
        print("")
    }
}
