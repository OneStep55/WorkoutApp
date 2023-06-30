//
//  OverviewConroller.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 13.06.2023.
//

import UIKit


class OverviewController: BaseController {
    
   
    
    private let navBar: OverviewNavBar = {
        let navBar = OverviewNavBar()
        return navBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension OverviewController {
    override func addViews() {
        super.addViews()
        view.addView(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true

        
    }
}

