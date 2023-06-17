//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 13.06.2023.
//

import UIKit

class ProgressController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNavBarButton(at: .left, title: Resources.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, title: Resources.Strings.Progress.navBarRight)
    }
}
