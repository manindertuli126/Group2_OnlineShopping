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
        print("Please enter your fullName:")
        let FN = readLine()!
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
        let A = readLine()!
        self.address = A
        
        print("Please enter your 10 digit Phone Number:")
        var P = Int(readLine()!)
        while phone<999999999{
            print("Phone should be greater than 9 digits")
            P = Int(readLine()!)
        }
        self.phone = P
        
        print("Please enter email ID:")
        var E = readLine()!
        while !(loginUserPassword.verifyEmail()){
            print("Username should be greater than 6 letters")
            E = readLine()!
        }
        self.email = E
        print("Username: \(String(describing: super.fullName)) is registered successfully.")
//        super.init(loginUser:loginUser, fullName:fullName, loginUserPassword:loginUserPassword)
    }
    
    func Login(){
        
    }
    
    func displayUserInfo(){
        print("")
    }
}
