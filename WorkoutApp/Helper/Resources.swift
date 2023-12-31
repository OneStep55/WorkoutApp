//
//  Resources.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 07.06.2023.
//

import UIKit


enum Resources {
    enum Colors {
//        static let active = UIColor(hexString: "#437BFE")
        static let active = UIColor.systemTeal
        static let inactive = UIColor(hexString: "#929DA5")
        
        static let backround = UIColor(hexString: "#F8F9F9")
        static let separator = UIColor(hexString: "#E8ECEF")
        static let secondary = UIColor(hexString: "#F0F3FF")
        
        static let titleGray = UIColor(hexString: "#545C77")
    }
    
    enum Strings {
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
        
        enum NavBar {
            static let overview = "Today"
            static let session = "High Intencity Cardio"
            static let progress = "Workout Progress"
            static let settigns = "Settings"
        }
        
        enum Overview {
            static let allWorkoutsButton = "All workouts"
        }
        
        enum Session {
            static let navBarLeft = "Pause"
            static let navBarRight = "Finish"
        }
        
        enum Progress {
            static let navBarLeft = "Export"
            static let navBarRight = "Details"
        }
    }
    
    enum Images {
        enum TabBar {
            static let overview = UIImage(systemName: "house")
            static let session = UIImage(systemName: "alarm")
            static let progress = UIImage(systemName: "chart.bar")
            static let settings = UIImage(systemName: "gearshape")
        }
        
        enum Common {
            static let downArrow = UIImage(systemName: "chevron.down")
        }
        
        enum Overview {
            static let plus = UIImage(systemName: "plus")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            return UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
