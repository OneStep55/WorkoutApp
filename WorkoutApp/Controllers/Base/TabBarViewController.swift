//
//  TabBarViewController.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 07.06.2023.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

       configure()
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        
        tabBar.backgroundColor = .systemBackground
        
        tabBar.layer.borderColor = Resources.Colors.separator?.cgColor
        
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        
        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = SettingsController()
        
        sessionController.title = Resources.Strings.NavBar.session
        progressController.title = Resources.Strings.NavBar.progress
        settingsController.title = Resources.Strings.NavBar.settigns
        
        let overviewNavController = NavBarController(rootViewController: overviewController)
        let sessionNavController = NavBarController(rootViewController: sessionController)
        let progressNavController = NavBarController(rootViewController: progressController)
        let settignsNavController = NavBarController(rootViewController: settingsController)
        
        overviewNavController.tabBarItem = UITabBarItem(
            title: Resources.Strings.TabBar.overview,
            image: Resources.Images.TabBar.overview,
            tag: Tabs.overview.rawValue)
        sessionNavController.tabBarItem = UITabBarItem(
            title: Resources.Strings.TabBar.session,
            image: Resources.Images.TabBar.session,
            tag: Tabs.session.rawValue)
        progressNavController.tabBarItem = UITabBarItem(
            title: Resources.Strings.TabBar.progress,
            image: Resources.Images.TabBar.progress,
            tag: Tabs.progress.rawValue)
        settignsNavController.tabBarItem = UITabBarItem(
            title: Resources.Strings.TabBar.settings,
            image: Resources.Images.TabBar.settings,
            tag: Tabs.settings.rawValue)
        
        setViewControllers([
            overviewNavController,
            sessionNavController,
            progressNavController,
            settignsNavController
        ], animated: true)
    }
    


}
