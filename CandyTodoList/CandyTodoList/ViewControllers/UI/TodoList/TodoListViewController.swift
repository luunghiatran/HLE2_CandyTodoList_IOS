//
//  TodoListViewController.swift
//  CandyTodoList
//
//  Created by NghiaTL on 5/29/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit
import EachNavigationBar

class TodoListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
    }

}

extension TodoListViewController {
    func initView() {
        //self.navigationController?.setNavigationBarHidden(true, animated: true)
        initNavigationBar()
    }
    
    func initNavigationBar() {
//        let nav = UINavigationController(rootViewController: self)
//        nav.navigation.configuration.isEnabled = true
//
//        nav.navigation.configuration.titleTextAttributes = [.foregroundColor: UIColor.blue]
//
//        nav.navigation.configuration.barTintColor = UIColor.red
        
        //nav.navigation.configuration.shadowImage = UIImage(named: "shadow")
        
        //nav.navigation.configuration.setBackgroundImage(UIImage(named: "nav"), for: .any, barMetrics: .default)
    }
}
