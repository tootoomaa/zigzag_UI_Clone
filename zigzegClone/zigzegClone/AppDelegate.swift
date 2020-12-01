//
//  AppDelegate.swift
//  zigzegClone
//
//  Created by 김광수 on 2020/12/01.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let customTabBar = CustomTabBar() as UITabBarController
        customTabBar.tabBar.barTintColor = .white
        
        window?.rootViewController = customTabBar
        window?.makeKeyAndVisible()
        
        return true
    }

}

