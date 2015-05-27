//
//  DAOChatRoom.swift
//  Hushdeal
//
//  Created by Mateus Pacheco Roza da Cunha on 5/25/15.
//  Copyright (c) 2015 Mateus Cunha. All rights reserved.
//

import UIKit

class DAOChatRoom: NSObject {
   
    class func getFreeChatRoomIndex() -> Int{
        
        return 0
    }
    
    class func addChatRoom(chatRoom:ChatRoom) -> Bool{
        
        return true
    }
    
    class func removeChatRoomWithIndex(Index:Int) -> Bool{
        
        return true
    }
    
    class func appendMessage(message:Message, atChatRoomIndex:Int) -> Bool{
        
        return true
    }

}
