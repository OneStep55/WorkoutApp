//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 13.06.2023.
//

import UIKit

final class NavBarController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .systemBackground
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGray!,
            .font: Resources.Fonts.helveticaRegular(with: 17)
        ]
        
        navigationBar.addBottomBorder(with: Resources.Colors.separator!, height: 1)
    }
   

}
