//
//  MainConstraints.swift
//  zigzegClone
//
//  Created by 김광수 on 2020/12/02.
//

import Foundation
import UIKit

struct MainConstraints {
    
    static let titleLabelText = "zigzag"
    static let searchViewPlaceHolder = "검색어를 입력해주세요"
    static let topSelectCategoryList = ["홈","베스트","신상"]
    
    static let topViewHeight: CGFloat = 70
    static let topSelectCategorySegHeight: CGFloat = 50
    static let scrollOffset: CGFloat = 20
    static let mainTableViewHeihgt = topViewHeight + topSelectCategorySegHeight - scrollOffset - 25
    
    static let mainViewMargin: CGFloat = 16
}
