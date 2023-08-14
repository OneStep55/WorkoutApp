//
//  WeekdayView.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 13.08.2023.
//

import UIKit

extension WeekView {
    
    final class WeekdayView: BaseView {
        
        let nameLabel: UILabel = {
            let label = UILabel()
            label.font = Resources.Fonts.helveticaRegular(with: 10)
            label.textAlignment = .center
            return label
        }()
        
        let dateLabel: UILabel = {
            let label = UILabel()
            label.font = Resources.Fonts.helveticaRegular(with: 17)
            label.textAlignment = .center
            return label
        }()
        
        let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.spacing = 3
            return stackView
        }()
        
        func configure(with index: Int, and name: String) {
            
            let startOfWeek = Date().startOfWeek
            let curentDay = startOfWeek.goForward(to: index)
            let day = Calendar.current.component(.day, from: curentDay)
            
            let isToday = curentDay.stripTime() == Date().stripTime()
            
            backgroundColor = isToday ? Resources.Colors.active : Resources.Colors.backround
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isToday ? .white : Resources.Colors.inactive
            
            dateLabel.text = "\(day)"
            dateLabel.textColor = isToday ? .white : Resources.Colors.inactive
        }
    }
}

extension WeekView.WeekdayView {
    override func addViews() {
        addView(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func layoutViews() {
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    override func configureViews() {
        layer.cornerRadius = 5
        layer.masksToBounds = true
    }
}
