//
//  BaseController.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 13.06.2023.
//

import UIKit

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
}

extension BaseController {
    func addViews() {
        
    }
    
    func layoutViews() {
        
    }
    
    func configure() {
        view.backgroundColor = Resources.Colors.backround
    }
}
