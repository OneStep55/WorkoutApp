//
//  Date + ext.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 14.08.2023.
//

import Foundation

extension Date {
    private var calendar: Calendar {
        return Calendar.current
    }
    
    var startOfWeek: Date {
        let components = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        guard let firstDay = calendar.date(from: components) else {
            return self
        }
        return firstDay
    }
    
    func goForward(to days: Int) -> Date {
        return calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    func stripTime() -> Date {
        let components  = calendar.dateComponents([.year, .month, .day], from: self)
        
        return calendar.date(from: components) ?? self
    }
}
