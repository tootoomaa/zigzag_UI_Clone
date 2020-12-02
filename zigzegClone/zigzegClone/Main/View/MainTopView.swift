//
//  MainTopView.swift
//  zigzegClone
//
//  Created by 김광수 on 2020/12/01.
//

import Foundation
import UIKit
import SnapKit
import Then

class MainTopView: UIView {
    // MARK: - Properties
    let height: CGFloat = 35 // view Height will 70
    
    let titleLabel = UILabel().then {
        $0.text = MainConstraints.titleLabelText
        $0.textColor = .black
        $0.font = mainTitleFont
    }
    
    lazy var searchView = UIView().then {
        $0.backgroundColor = .systemGray6
        $0.layer.cornerRadius = height/2
        $0.clipsToBounds = true
    }
    
    let searchImage = UIImageView().then {
        $0.image = CustomTabBarUIImage.getOriginImage("magnifyingglass").withTintColor(.gray)
    }
    
    let searchLabel = UILabel().then {
        $0.text = MainConstraints.searchViewPlaceHolder
        $0.textColor = .systemGray2
    }
    
    let cartButton = UIButton().then {
        let image = UIImage(systemName: "bag.fill")
        $0.setImage(image, for: .normal)
        $0.tintColor = .systemPink
    }
    
    // MARK: - Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        configureLayout()
        
        configureSearchViewLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout
    private func configureLayout() {
        let safeGuide = self.safeAreaLayoutGuide
        
        [titleLabel, searchView, cartButton].forEach {
            addSubview($0)
            $0.frame.size.height = height
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(safeGuide).offset(20)
            $0.leading.equalTo(safeGuide).offset(20)
        }
        
        cartButton.snp.makeConstraints {
            $0.centerY.equalTo(titleLabel)
            $0.trailing.equalTo(safeGuide).offset(-10)
            $0.height.width.equalTo(height)
        }
        
        searchView.snp.makeConstraints {
            $0.centerY.equalTo(titleLabel)
            $0.leading.equalTo(titleLabel.snp.trailing).offset(20)
            $0.trailing.equalTo(cartButton.snp.leading).offset(-10)
            $0.height.equalTo(height)
        }
    }
    
    private func configureSearchViewLayout() {
        
        [searchImage, searchLabel].forEach {
            searchView.addSubview($0)
        }
        
        searchImage.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().offset(10)
        }
        
        searchLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(searchImage.snp.trailing).offset(10)
        }
        
    }
}
