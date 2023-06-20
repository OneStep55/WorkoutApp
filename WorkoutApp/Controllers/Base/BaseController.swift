//
//  BaseController.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 13.06.2023.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        layoutViews()
        configure()
    }
}

@objc extension BaseController {
    func addViews() {
        
    }
    
    func layoutViews() {
        
    }
    
    func configure() {
        view.backgroundColor = Resources.Colors.backround
    }
    
    func navBarLeftButtonHandler() {
        print("navLeftButton pressed")
    }
    
    func navBarRightButtonHandler() {
        print("navRightButton pressed")
    }
}

extension BaseController {
    
    func addNavBarButton(at position: NavBarPosition, title: String) {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inactive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
    
    
}
