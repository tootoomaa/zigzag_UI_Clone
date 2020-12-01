//
//  TopCategorySelectView.swift
//  zigzegClone
//
//  Created by 김광수 on 2020/12/01.
//

import Foundation
import UIKit
import Then
import SnapKit

class TopCategorySelectView: UIView {
    // MARK: - Properties
    let homeButton = UIButton().then {
        $0.setTitle("홈", for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 20)
    }
    
    let bestButton = UIButton().then {
        $0.setTitle("베스트", for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 20)
    }
    
    let newProductButton = UIButton().then {
        $0.setTitle("신상", for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 20)
    }
    
    // MARK: - Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout
    private func configureLayout() {
        [homeButton, bestButton, newProductButton].forEach {
            addSubview($0)
        }
        
        homeButton.snp.makeConstraints {
            $0.leading.equalTo(self.safeAreaLayoutGuide).offset(10)
            $0.top.equalToSuperview()
        }
        
        bestButton.snp.makeConstraints {
            $0.leading.equalTo(homeButton.snp.leading)
            $0.width.height.equalTo(homeButton)
        }
        
        newProductButton.snp.makeConstraints {
            $0.leading.equalTo(bestButton.snp.trailing)
            $0.width.height.equalTo(homeButton)
        }
        
    }
}
