//
//  User.swift
//  PetrolPriceChecker
//
//  Created by tn on 15/5/18.
//  Copyright © 2018 tn. All rights reserved.
//

import Foundation

public class User {
    var _username: String?;
    var _password: String?;
    var _userType: UserType;
    
    init( username:String, password: String, userType: UserType){
        _username = username;
        _password = password;
        _userType = userType;
    }
}
