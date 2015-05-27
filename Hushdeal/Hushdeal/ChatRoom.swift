//
//  ChatRoom.swift
//  Hushdeal
//
//  Created by Mateus Pacheco Roza da Cunha on 5/25/15.
//  Copyright (c) 2015 Mateus Cunha. All rights reserved.
//

import UIKit

class ChatRoom: NSObject {
   
    var index:Int!
    var members:[User]!
    var messages: [Message]!
    
    init (index:Int, members:[User]){
        super.init()
        self.index = index
        self.members = members
        self.messages = []
    }
}
