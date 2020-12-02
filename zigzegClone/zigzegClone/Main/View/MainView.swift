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
    let mainTopView = MainTopView()
    
    lazy var topCategorySelectSegControl = UISegmentedControl(items: MainConstraints.topSelectCategoryList).then {
        $0.removeBorder()
        $0.selectedSegmentIndex = 0
    }
    
    let tableView = UITableView().then {
        let headerView = MainTableHeaderView()
        $0.backgroundColor = .white
        $0.tableHeaderView = headerView
        $0.tableHeaderView?.frame.size.height = 120
    }
    
    let buttomView = UIView().then {
        $0.backgroundColor = .systemGray4
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureLayout() {
        let safeGuide = self.safeAreaLayoutGuide
        [mainTopView, tableView, topCategorySelectSegControl, buttomView].forEach {
            addSubview($0)
        }
        
        mainTopView.snp.makeConstraints {
            $0.top.equalTo(safeGuide)
            $0.leading.trailing.equalTo(safeGuide)
            $0.height.equalTo(MainConstraints.topViewHeight)
        }
        
        topCategorySelectSegControl.snp.makeConstraints {
            $0.top.equalTo(safeGuide).offset(50)
            $0.height.equalTo(MainConstraints.topSelectCategorySegHeight)
            $0.leading.trailing.equalTo(safeGuide)
        }
        
        buttomView.snp.makeConstraints {
            $0.top.equalTo(topCategorySelectSegControl.snp.bottom).offset(-1)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(1)
        }
        
        tableView.snp.makeConstraints {
            $0.top.equalTo(safeGuide).offset(MainConstraints.mainTableViewHeihgt)
            $0.leading.trailing.bottom.equalTo(safeGuide)
        }
    }
}
