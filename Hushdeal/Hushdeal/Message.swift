//
//  Message.swift
//  Hushdeal
//
//  Created by Mateus Pacheco Roza da Cunha on 5/25/15.
//  Copyright (c) 2015 Mateus Cunha. All rights reserved.
//

import UIKit

class Message: NSObject {
   
    var content:String!
    var sentBy:User!
    var sentTime:NSDate!
    
    init(content:String, sentBy:User){
        super.init()
        self.content = content
        self.sentBy = sentBy
        //TODO: capturar a hora em que a instância é criada e modificar o formato de exibição do tempo
        self.sentTime = NSDate()
    }

}
