//
//  MainVC.swift
//  zigzegClone
//
//  Created by 김광수 on 2020/12/01.
//

import Foundation
import UIKit

class MainVC: UIViewController {
    
    let mainView = MainView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        
        view.backgroundColor = .white
        
    }
    
}
