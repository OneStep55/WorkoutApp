//
//  Resources.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 07.06.2023.
//

import UIKit


enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inactive = UIColor(hexString: "#929DA5")
        static var backround = UIColor(hexString: "#F8F9F9")
        static var separator = UIColor(hexString: "#E8ECEF")
        static var titleGray = UIColor(hexString: "#545C77")
    }
    
    enum Strings {
        enum TabBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
    }
    
    enum Images {
        enum TabBar {
            static var overview = UIImage(systemName: "house")
            static var session = UIImage(systemName: "alarm")
            static var progress = UIImage(systemName: "chart.bar")
            static var settings = UIImage(systemName: "gearshape")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            return UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
