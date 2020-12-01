//
//  CustomTabBar.swift
//  zigzegClone
//
//  Created by 김광수 on 2020/12/01.
//

import Foundation
import UIKit

class CustomTabBar: UITabBarController {
    
    override func viewDidLoad() {
        
        configureTabBarAppearance()
        
        configureViewController()
    }
    
    private func configureTabBarAppearance() {
        let appearance = tabBar.standardAppearance
        appearance.shadowImage = nil
        appearance.shadowColor = nil
        appearance.backgroundColor = .white
        tabBar.standardAppearance = appearance
    }
    
    private func configureViewController() {
        let mainVC = MainVC()
        let storeVC = StoreVC()
        let collectionVC = CollectionVC()
        let selectItemVC = SelectItemVC()
        let myPageVC = MyPageVC()
        
        mainVC.tabBarItem = UITabBarItem(title: nil,
                                         image: CustomTabBarIcon.mainEmpty,
                                         selectedImage: CustomTabBarIcon.mainFill)
        
        storeVC.tabBarItem = UITabBarItem(title: nil,
                                          image: CustomTabBarIcon.storeEmpty,
                                          selectedImage: CustomTabBarIcon.storeFill)
        
        collectionVC.tabBarItem = UITabBarItem(title: nil,
                                               image: CustomTabBarIcon.collectionEmpty,
                                               selectedImage: CustomTabBarIcon.collectionFill)
        
        selectItemVC.tabBarItem = UITabBarItem(title: nil,
                                               image: CustomTabBarIcon.selectItemEmpty,
                                               selectedImage: CustomTabBarIcon.selectItemFill)
        
        myPageVC.tabBarItem = UITabBarItem(title: nil,
                                           image: CustomTabBarIcon.myPageEmpty,
                                           selectedImage: CustomTabBarIcon.myPageFill)
        
        viewControllers = [mainVC, storeVC, collectionVC, selectItemVC, myPageVC]
        
    }
    
}
