//
//  HomeTabBarController.swift
//  CandyTodoList
//
//  Created by NghiaTL on 6/6/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit
import ESTabBarController_swift
import SideMenu
import EachNavigationBar

class HomeTabBarController: ESTabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initTab()
        initSideMenu(self)
    }
}

// MARK: === Static ===
extension HomeTabBarController {
    
}

// MARK: === Private ===
extension HomeTabBarController {
    
    private func initTab() {
        let bgColor = UIColor(named: "AppPink")
        self.tabBar.backgroundColor = bgColor
        self.tabBar.barTintColor = bgColor
        self.shouldHijackHandler = {
            tabbarController, viewController, index in
            if index == 2 {
                return true
            }
            return false
        }
        self.didHijackHandler = {[weak tabBarController] tabbarController, viewController, index in
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                // open add todo
                let addTodoVC = AddTodoViewController(nibName: "AddTodoViewController", bundle: nil)
                let nav = UINavigationController(rootViewController: addTodoVC)
                self.present(nav, animated: true, completion: nil)
            }
        }
        
        let tab1 = TodoListViewController(nibName: "TodoListViewController", bundle: nil)
        let tab2 = SchedulerListViewController(nibName: "SchedulerListViewController", bundle: nil)
        let tab3 = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
        let tab4 = NotificationListViewController(nibName: "NotificationListViewController", bundle: nil)
        let tab5 = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        
        tab1.tabBarItem = ESTabBarItem(
            AppTabContentView(),
            title: nil,
            image: UIImage(named: "ic_list"),
            selectedImage: UIImage(named: "ic_list_seleted"),
            tag: 1
        )
        tab2.tabBarItem = ESTabBarItem(
            AppTabContentView(),
            title: nil,
            image: UIImage(named: "ic_clock"),
            selectedImage: UIImage(named: "ic_clock_seleted"),
            tag: 2
        )
        tab3.tabBarItem = ESTabBarItem(
            AppBigTabContentView(),
            title: nil,
            image: UIImage(named: "ic_plus"),
            selectedImage: UIImage(named: "ic_plus"),
            tag: 3
        )
        tab4.tabBarItem = ESTabBarItem(
            AppTabContentView(),
            title: nil,
            image: UIImage(named: "ic_notification"),
            selectedImage: UIImage(named: "ic_notification_seleted"),
            tag: 4
        )
        tab5.tabBarItem = ESTabBarItem(
            AppTabContentView(),
            title: nil,
            image: UIImage(named: "ic_user"),
            selectedImage: UIImage(named: "ic_user_seleted"),
            tag: 5
        )
        
        /// Config NavigationBar
        let nav1 = initNavigationController(tab1, title: "TO-DO")
        let nav2 = initNavigationController(tab2, title: "SCHEDULER")
        let nav3 = initNavigationController(tab3, title: "")
        let nav4 = initNavigationController(tab4, title: "NOTIFICATIONS")
        let nav5 = initNavigationController(tab5, title: "PROFILE")
        
        //let controllers = [tab1, tab2, tab3, tab4, tab5]
        let controllers = [nav1, nav2, nav3, nav4, nav5]
        self.viewControllers = controllers
    }
    
    private func initNavigationController(_ viewController: UIViewController, title: String) -> UINavigationController {
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigation.configuration.isEnabled = true // Enable Each Navigation
        
        // Background
        nav.navigation.configuration.barTintColor = UIColor(named: "AppPink")
        // Title
        let textColor = UIColor(named: "AppBlue") ?? UIColor.gray
        nav.navigation.configuration.titleTextAttributes = [
            .foregroundColor: textColor,
            .font: UIFont(name: "AvenirLTStd-Roman", size: 14)!
        ]
        
        return nav
    }
    
    func initSideMenu(_ viewController: UIViewController) {
        // https://github.com/jonkykong/SideMenu
        let menuVC = MenuViewController(nibName: "MenuViewController", bundle: nil)
        
        // Define the menus
        let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: menuVC)
        SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
        
        //        SideMenuManager.default.menuAddPanGestureToPresent(toView: viewController.navigationController!.navigationBar)
        SideMenuManager.default.menuAddPanGestureToPresent(toView: viewController.view)
        //        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: viewController.navigationController!.view)
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: viewController.view)
        
        SideMenuManager.default.menuFadeStatusBar = false
        
        SideMenuManager.default.menuWidth = max(round(min((screenSize.width), (screenSize.height)) * 0.8), 240)
    }
}
