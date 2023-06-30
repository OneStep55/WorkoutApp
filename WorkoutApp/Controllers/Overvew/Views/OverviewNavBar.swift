//
//  OverviewNavBar.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 21.06.2023.
//

import UIKit

class OverviewNavBar: BaseView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.Strings.NavBar.overview
        label.textColor = Resources.Colors.titleGray
        label.font = Resources.Fonts.helveticaRegular(with: 22)
        return label
    }()
    
    private let addButton: UIButton = {
        let addButton = UIButton()
        addButton.backgroundColor = Resources.Colors.active
        addButton.setImage(Resources.Images.Overview.plus, for: .normal)
        addButton.tintColor = .white
        addButton.layer.cornerRadius = 14
        return addButton
    }()
    
    private let allWorkoutsButton: SecondaryButton = {
        let button = SecondaryButton()
        button.setTitle(Resources.Strings.Overview.allWorkoutsButton)
        return button
    }()
    
    private let weekView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue.withAlphaComponent(0.2)
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomBorder(with: Resources.Colors.separator!, height: 1)
    }
    
    func addAllWorkoutsButtonAction(action: Selector, target: Any ) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    func addAddButtonAction(action: Selector, target: Any ) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNavBar {
    override func addViews() {
        super.addViews()
        addView(titleLabel)
        addView(allWorkoutsButton)
        addView(addButton)
        addView(weekView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),
            
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47)
            
        ])
    }
    
    override func configure() {
        super.configure()
        backgroundColor = .white
        allWorkoutsButton.addTarget(self,
                                    action: #selector(allWorkoutsButtonAction),
                                    for: .touchUpInside)
        
        
    }
}

@objc extension OverviewNavBar {
    
    func allWorkoutsButtonAction() {
        print("All wokrouts button tapped")
    }
}
