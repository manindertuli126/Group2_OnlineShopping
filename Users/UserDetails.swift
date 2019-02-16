//
//  UserDetails.swift
//  Group2_OnlineShopping
//
//  Created by MacStudent on 2019-02-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

public class UserDetails{
    var loginUser : String!
    var fullName : String!
    var loginUserPassword : String!
    
    init() {
        self.loginUser = String()
        self.fullName = String()
        self.loginUserPassword = String()
    }
    
    init(loginUser:String, fullName:String, loginUserPassword:String) {
        self.loginUser = loginUser
        self.fullName = fullName
        self.loginUserPassword = loginUserPassword
}
}
