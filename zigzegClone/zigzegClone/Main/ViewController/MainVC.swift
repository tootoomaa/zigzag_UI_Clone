//
//  MainVC.swift
//  zigzegClone
//
//  Created by 김광수 on 2020/12/01.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

class MainVC: UIViewController {
    // MARK: - Properties
    let disposeBag = DisposeBag()
    
    var isTableViewScrolled = false
    
    let mainView = MainView()
    
    // MARK: - Life Cycle
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        
        view.backgroundColor = .white
            
        mainView.topCategorySelectSegControl.addTarget(self, action: #selector(segmentedControlDidChange(_:)), for: .valueChanged)

        configureTableView()
    }
    
    private func configureTableView() {
        mainView.tableView.delegate = self
        mainView.tableView.dataSource = self
    }
    
    @IBAction func segmentedControlDidChange(_ sender: UISegmentedControl){
        mainView.topCategorySelectSegControl.changeUnderlinePosition()
    }
}

// MARK: - TableView Delegate
extension MainVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = "aaaa"
        cell.detailTextLabel?.text = "vvvv"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

// MARK: - TopView Scroll Anmimation
extension MainVC {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let safeGuide = self.mainView.safeAreaLayoutGuide
        
        if scrollView.contentOffset.y < 30 && isTableViewScrolled == true {
            
            isTableViewScrolled = false
            
            mainView.mainTopView.snp.updateConstraints {
                $0.top.equalTo(safeGuide)
            }
            
            mainView.topCategorySelectSegControl.snp.updateConstraints {
                $0.top.equalTo(safeGuide).offset(MainConstraints.topViewHeight-20)
            }
            
            UIView.animate(withDuration: 0.2) {
                self.mainView.layoutIfNeeded()
            }
        }

        if scrollView.contentOffset.y > 30 && isTableViewScrolled == false {
            
            isTableViewScrolled = true
            
            mainView.mainTopView.snp.updateConstraints {
                $0.top.equalTo(safeGuide).offset(-150)
            }
            
            mainView.topCategorySelectSegControl.snp.updateConstraints {
                $0.top.equalTo(safeGuide).offset(20)
            }
            
            UIView.animate(withDuration: 0.2) {
                self.mainView.layoutIfNeeded()
            }
        }
    }
}
