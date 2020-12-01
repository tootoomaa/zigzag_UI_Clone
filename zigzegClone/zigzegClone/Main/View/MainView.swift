//
//  MainView.swift
//  zigzegClone
//
//  Created by 김광수 on 2020/12/01.
//

import Foundation
import UIKit
import SnapKit
import Then

class MainView: UIView {
    // MARK: - Properties
    let mainTopViewHeight: CGFloat = 70
    let mainTopView = MainTopView()
    
    let topCategorySelectView = TopCategorySelectView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureLayout() {
        
        [mainTopView, topCategorySelectView].forEach {
            addSubview($0)
        }
        
        mainTopView.snp.makeConstraints {
            $0.top.leading.trailing.equalTo(self.safeAreaLayoutGuide)
            $0.height.equalTo(mainTopViewHeight)
        }
        
        topCategorySelectView.snp.makeConstraints {
            $0.top.equalTo(mainTopView.snp.bottom)
            $0.height.equalTo(mainTopViewHeight)
            $0.leading.trailing.equalTo(self.safeAreaLayoutGuide)
        }
    }
}
