//
//  User.swift
//  TesteiOS
//
//  Created by Fernando Gomes on 14/06/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import Foundation
import ObjectMapper
import Realm
import RealmSwift

class User: Object, Mappable {
    var userAccount: UserAccount?
    var error: String?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        userAccount <- map["userAccount"]
        error <- map["error"]
    }
}

class UserAccount: Object, Mappable {
    var userId: Int?
    var name: String?
    var bankAccount: String?
    var agency: String?
    var balance: Float?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        userId <- map["userId"]
        name <- map["name"]
        bankAccount <- map["bankAccount"]
        agency <- map["agency"]
        balance <- (map["balance"])
    }
    

}
