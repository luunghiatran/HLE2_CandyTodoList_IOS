//
//  SchedulerListViewController.swift
//  CandyTodoList
//
//  Created by NghiaTL on 5/29/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit

class SchedulerListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    func setupView() {
        AppHelper.configHomeNavigationBar(viewController: self, title: "SCHEDULER")
    }
}
