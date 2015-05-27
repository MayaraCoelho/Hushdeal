//
//  ChatRoomController.swift
//  Hushdeal
//
//  Created by Mateus Pacheco Roza da Cunha on 5/25/15.
//  Copyright (c) 2015 Mateus Cunha. All rights reserved.
//

import UIKit

class ChatRoomController: UIViewController {

    var user:User?
    var chatRoom:ChatRoom?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.setHidesBackButton(true, animated: true)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Trocar", style: .Plain, target: self, action: "startNewChat")
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sair", style: .Plain, target: self, action: "exitChatRoom")
        
        self.startNewChat()
 
    }

    func startNewChat() {
    
        if (self.chatRoom != nil){
            
            if(DAOChatRoom.removeChatRoomWithIndex(self.chatRoom!.index)){
                println("Success")
            }else{
                println("Fail")
            }
        }
        
        if(DAOUser.getAvailableUsersList() != []){
            
            self.chatRoom = ChatRoom(index: DAOChatRoom.getFreeChatRoomIndex(), members:[self.user!, self.matchWithNewUser()])
        }else{
            self.user!.chatIndex = 0
            if(DAOUser.addUser(self.user!)){
                println("Success")
            }else{
                println("Fail")
            }
            //TODO: dar próximo usuário colocá-lo em um chatRoom
        }
        
    
    }
    
    func exitChatRoom(){
        
        if (self.chatRoom != nil){
            
            if(DAOChatRoom.removeChatRoomWithIndex(self.chatRoom!.index)){
                println("Success")
            }else{
                println("Fail")
            }
        }
    
        if(DAOUser.removeUserWithID(self.user!.id)){
        println("Success")
        }else{
        println("Fail")
        }
        
        self.navigationController?.popViewControllerAnimated(true)
    }

    func matchWithNewUser() -> User{
        
        //TODO: escolher um usuário por proximidade de idade
        
        return User(id: 2, ageGroup: 1)
    }
    
    @IBAction func sendPressed(sender: UIBarButtonItem) {
        
        
    }
}


