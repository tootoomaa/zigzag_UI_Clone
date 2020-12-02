//
//  MainTableHeaderView.swift
//  zigzegClone
//
//  Created by 김광수 on 2020/12/02.
//

import Foundation
import UIKit
import SnapKit
import Then

class MainTableHeaderView: UIView {
    
    let imageView = UIImageView().then {
        $0.image = UIImage(named: "mainBannerImage1")
        $0.layer.cornerRadius = 10
        $0.clipsToBounds = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureLayout() {
        [imageView].forEach {
            addSubview($0)
        }
        
        imageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(MainConstraints.scrollOffset+10)
            $0.leading.equalToSuperview().offset(10)
            $0.trailing.bottom.equalToSuperview().offset(-10)
        }
    }
}
