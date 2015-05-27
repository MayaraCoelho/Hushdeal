//
//  DAOUser.swift
//  Hushdeal
//
//  Created by Mateus Pacheco Roza da Cunha on 5/25/15.
//  Copyright (c) 2015 Mateus Cunha. All rights reserved.
//

import UIKit

class DAOUser: NSObject {
   
    class func getFreeUserID() -> Int{
        
        return 0
    }
    
    class func addUser(user:User) -> Bool{
        
        return true
    }
    
    class func removeUserWithID(ID:Int) -> Bool{
        
        return true
    }
    
    class func getAvailableUsersList() -> [User]{
        
        return [User(id: 1, ageGroup: 1)]
    }
}
