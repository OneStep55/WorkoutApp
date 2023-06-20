//
//  OverviewConroller.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 13.06.2023.
//

import UIKit


class OverviewController: BaseController {
    
    private let allWorkoutsButton: SecondaryButton = {
        let button = SecondaryButton()
        button.setTitle(Resources.Strings.Overview.allWorkoutsButton)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension OverviewController {
    override func addViews() {
        super.addViews()
        view.addSubview(allWorkoutsButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            allWorkoutsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            allWorkoutsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130)
        ])
    }
    
    override func configure() {
        super.configure()
        
        allWorkoutsButton.addTarget(self,
                                    action: #selector(allWorkoutsButtonAction),
                                    for: .touchUpInside)
        
    }
}

@objc extension OverviewController {
    
    func allWorkoutsButtonAction() {
        print("All wokrouts button tapped")
    }
}
