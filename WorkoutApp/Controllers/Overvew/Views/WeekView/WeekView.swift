//
//  WeekView.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 13.08.2023.
//

import UIKit

private let stackView: UIStackView = {
    let stackView = UIStackView()
    stackView.spacing = 7
    stackView.distribution = .fillEqually
    return stackView
}()

private let calendar = Calendar.current

final class WeekView: BaseView {
    
    
}

extension WeekView {
    override func addViews() {
        addView(stackView)
        
        var weekDays = calendar.shortStandaloneWeekdaySymbols
        
    
        let sunday = weekDays.remove(at: 0)
        weekDays.append(sunday)
        
        
        weekDays.enumerated().forEach { ind, name in
            let weekdayView = WeekdayView()
            weekdayView.configure(with: ind, and: name)
            stackView.addArrangedSubview(weekdayView)
        }
    }
    
    override func layoutViews() {
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureViews() {
        
    }
}
