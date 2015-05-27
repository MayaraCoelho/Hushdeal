//
//  User.swift
//  Hushdeal
//
//  Created by Mateus Pacheco Roza da Cunha on 5/25/15.
//  Copyright (c) 2015 Mateus Cunha. All rights reserved.
//

import UIKit

class User: NSObject {
 
    var id:Int!
    var ageGroup:Int!
    var chatIndex: Int!
    
    init(id:Int, ageGroup:Int){
        super.init()
        self.id = id
        self.ageGroup = ageGroup
        self.chatIndex = 0
    }
    
}
