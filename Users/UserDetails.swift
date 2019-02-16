//
//  UserDetails.swift
//  Group2_OnlineShopping
//
//  Created by MacStudent on 2019-02-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class UserDetails{
    var loginUser : String!
    var userName : String!
    var loginUserPassword : String!
    
    init() {
        self.loginUser = String()
        self.userName = String()
        self.loginUserPassword = String()
    }
    
    init(loginUser:String, userName:String, loginUserPassword:String) {
        self.loginUser = loginUser
        self.userName = userName
        self.loginUserPassword = loginUserPassword
}
}
