//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 13.06.2023.
//

import UIKit


class SessionController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNavBarButton(at: .left, title: Resources.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, title: Resources.Strings.Session.navBarRight)
        
    }
    
    override func navBarLeftButtonHandler() {
        print("Session navbar left button tapped")
    }
}
