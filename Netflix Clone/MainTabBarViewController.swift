//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Victor Bruce on 19/11/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        // embed each view controller in a UI navigation controller
        let homeVc = UINavigationController(rootViewController: HomeViewController())
        let searchVc = UINavigationController(rootViewController: SearchViewController())
        let upcomingVc = UINavigationController(rootViewController: UpcomingViewController())
        let downloadsVc = UINavigationController(rootViewController: DownloadsViewController())
        
        // add sf symbols to each tab bar item
        homeVc.tabBarItem.image = UIImage(systemName: "house")
        searchVc.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        upcomingVc.tabBarItem.image = UIImage(systemName: "play.circle")
        downloadsVc.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        // add label to each tab bar item icon
        homeVc.title = "Home"
        searchVc.title = "Search"
        upcomingVc.title = "Coming Soon"
        downloadsVc.title = "Downloads"
        
        // change tab bar label color
        tabBar.tintColor = .label
        
        // set each UI navigation view controller to the UITabBarController
        setViewControllers([homeVc,upcomingVc, searchVc, downloadsVc], animated: true)
    }

}

