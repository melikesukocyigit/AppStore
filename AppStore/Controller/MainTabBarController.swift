//
//  MainTabBarController.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 21.11.2025.
//

import UIKit
class MainTabBarController: UITabBarController{
    
    //Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

// Helpers
extension MainTabBarController {
    private func setup() {
        viewControllers = [
            createViewController(rootViewController: AppsViewController(), title: "Apps", imageName: "square.stack.3d.up"),
            createViewController(rootViewController: SearchViewController(), title: "Search", imageName: "magnifyingglass"),
            createViewController(rootViewController: TodayViewController(), title: "Today", imageName: "doc.text.image"),
          
        ]
    }
    private func createViewController(rootViewController: UIViewController , title: String, imageName: String) -> UIViewController {
        rootViewController.title = title
        let appearence = UINavigationBarAppearance()
        let controller = UINavigationController(rootViewController: rootViewController)
        controller.navigationBar.prefersLargeTitles = true
        controller.navigationBar.compactAppearance = appearence
        controller.navigationBar.standardAppearance = appearence
        controller.navigationBar.scrollEdgeAppearance = appearence
        controller.navigationBar.compactScrollEdgeAppearance = appearence
        controller.tabBarItem.title = title
        controller.tabBarItem.image = UIImage(systemName: imageName)

        return controller
        
    }
}
