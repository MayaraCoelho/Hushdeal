//
//  AgeGroupController.swift
//  Hushdeal
//
//  Created by Mateus Pacheco Roza da Cunha on 5/25/15.
//  Copyright (c) 2015 Mateus Cunha. All rights reserved.
//

import UIKit

class AgeGroupController: UIViewController {
    
    @IBOutlet weak var ageGroupSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func startChatTapped(sender: AnyObject) {
        
        var newUser = User(id:DAOUser.getFreeUserID(),ageGroup: ageGroupSegment.selectedSegmentIndex)
        if (DAOUser.addUser(newUser)){
            println("Success")
        }else{
            println("Fail")
        }
        
        var chatRoomController = ChatRoomController(nibName:"ChatRoomController", bundle:nil)
        chatRoomController.user = newUser
        
        self.navigationController?.pushViewController(chatRoomController, animated: true)
    }

}
