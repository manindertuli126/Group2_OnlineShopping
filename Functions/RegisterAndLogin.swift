//
//  RegisterAndLogin.swift
//  Group2_OnlineShopping
//
//  Created by MacStudent on 2019-02-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class RegisterAndLogin : UserDefaults{
    
    var FullName : String!
    var Address : String!
    var Phone : Int!
    
    func Register(FullName:String, Address:String, Phone:Int){
        self.FullName = FullName
        self.Address = Address
        self.Phone = Phone
    }
    
    func Login(){
        
    }
}
