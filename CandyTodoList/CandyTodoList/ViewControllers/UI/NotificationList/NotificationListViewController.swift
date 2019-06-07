//
//  NotificationListViewController.swift
//  CandyTodoList
//
//  Created by NghiaTL on 5/29/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit

class NotificationListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
    }

    func initView() {
        AppHelper.configHomeNavigationBar(viewController: self, title: "NOTIFICATIONS")
    }
}
