//
//  CustomTapBarIcon.swift
//  zigzegClone
//
//  Created by 김광수 on 2020/12/01.
//

import Foundation
import UIKit

class CustomTabBarUIImage: UIImage {
    
    static func getOriginImage(_ sysName: String) -> UIImage {
        let image = UIImage(systemName: sysName)
        return image!.withRenderingMode(.alwaysOriginal)
    }
    
}

struct CustomTabBarIcon {
    
    static let mainFill = CustomTabBarUIImage.getOriginImage("bolt.horizontal.circle.fill")
    static let mainEmpty = CustomTabBarUIImage.getOriginImage("bolt.horizontal.circle")
    
    static let storeFill = CustomTabBarUIImage.getOriginImage("cart.fill")
    static let storeEmpty = CustomTabBarUIImage.getOriginImage("cart")
    
    static let collectionFill = CustomTabBarUIImage.getOriginImage("square.grid.2x2.fill")
    static let collectionEmpty = CustomTabBarUIImage.getOriginImage("square.grid.2x2")
    
    static let selectItemFill = CustomTabBarUIImage.getOriginImage( "suit.heart.fill")
    static let selectItemEmpty = CustomTabBarUIImage.getOriginImage( "suit.heart")
    
    static let myPageFill = CustomTabBarUIImage.getOriginImage("person.fill")
    static let myPageEmpty = CustomTabBarUIImage.getOriginImage("person")
    
}
