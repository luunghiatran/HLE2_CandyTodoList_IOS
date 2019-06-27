//
//  AddTodoViewController.swift
//  CandyTodoList
//
//  Created by NghiaTL on 6/7/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit
import EachNavigationBar

class AddTodoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }

}

// MARK: === private func ===
extension AddTodoViewController {
    private func setupView() {
        configNavigationBar()
    }
    
    private func configNavigationBar() {
        
        self.navigation.item.title = "NEW TASK"
        
        // Shadow bar
        let shadowColor = UIColor(named: "AppPink")?.cgColor ?? UIColor.gray.cgColor
        self.navigation.bar.shadow = Shadow(
            color: shadowColor,
            opacity: 0.5,
            offset: CGSize(width: 0, height: 8)
        )
        
        // left close button
        let menuImage = UIImage(named: "ic_close")
        let menuImageColor = UIColor(named: "AppBlue")
        navigation.bar.backBarButtonItem = .init(style: .image(menuImage), tintColor: menuImageColor)
        
        navigation.bar.backBarButtonItem.shouldBack = {item in
            // close vc
            self.navigationController?.dismiss(animated: true, completion: nil)
            return true // not allow backButton back
        }
    }
}
