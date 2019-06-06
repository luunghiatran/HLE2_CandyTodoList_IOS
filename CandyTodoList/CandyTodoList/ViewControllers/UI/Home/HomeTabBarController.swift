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
    fileprivate func initNavigation(_ nav: UINavigationController) {
        // Enable Each Navigation
        nav.navigation.configuration.isEnabled = true
        
        // Setting
        nav.navigation.configuration.titleTextAttributes = [.foregroundColor: UIColor.blue]
        
        nav.navigation.configuration.barTintColor = UIColor.red
        
        nav.navigation.configuration.shadowImage = UIImage(named: "shadow")
        
        nav.navigation.configuration.setBackgroundImage(UIImage(named: "nav"), for: .any, barMetrics: .default)
        
        // hide navigation bar
        nav.navigation.bar.isHidden = true
        
        // set bar alpha
        nav.navigation.bar.alpha = 0.5
        
        // set title alpha
        nav.navigation.bar.setTitleAlpha(0.5)
        
        // set barButtonItem alpha
        nav.navigation.bar.setTintAlpha(0.5)
        // if barButtonItem is customView
        nav.navigation.item.leftBarButtonItem?.customView?.alpha = 0.5
        // if barButtonItem customized tintColor
        nav.navigation.item.leftBarButtonItem?.tintColor = navigation.item.leftBarButtonItem?.tintColor?.withAlphaComponent(0.5)
        
        // remove blur effect
        nav.navigation.bar.isTranslucent = false
        
        // hides shadow image
        nav.navigation.bar.isShadowHidden = true
        
        // set status bar style
        nav.navigation.bar.statusBarStyle = .lightContent
        
        // set back bar button item
        nav.navigation.bar.backBarButtonItem = .init(style: .title("Back"), tintColor: .red)
        
        // allow back
        nav.navigation.bar.backBarButtonItem.shouldBack = { item in
            // do something
            return false
        }
        
        // handler before back
        nav.navigation.bar.backBarButtonItem.willBack = {
            // do something
        }
        
        // handler after back
        nav.navigation.bar.backBarButtonItem.didBack = {
            // do something
        }
        
        // if you want change navigation bar position
        nav.navigation.bar.automaticallyAdjustsPosition = false
        
        // navigation bar additional height
        nav.navigation.bar.additionalHeight = 14
        
        // navigation bar additional view
        nav.navigation.bar.additionalView = UIView()
        
        // item padding
        nav.navigation.bar.layoutPaddings = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
        
        // shadow
        nav.navigation.bar.shadow = Shadow(
            color: UIColor.black.cgColor,
            opacity: 0.5,
            offset: CGSize(width: 0, height: 3))
    }
    
    private func initTab() {
        let bgColor = UIColor(named: "AppPink")
        self.tabBar.backgroundColor = bgColor
        self.tabBar.barTintColor = bgColor
        
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
        let nav1 = UINavigationController(rootViewController: tab1)
        let nav2 = UINavigationController(rootViewController: tab2)
        let nav3 = UINavigationController(rootViewController: tab3)
        let nav4 = UINavigationController(rootViewController: tab4)
        let nav5 = UINavigationController(rootViewController: tab5)
        
        initNavigation(nav1)
        initNavigation(nav2)
        initNavigation(nav3)
        initNavigation(nav4)
        initNavigation(nav5)
        
        //let controllers = [tab1, tab2, tab3, tab4, tab5]
        let controllers = [nav1, nav2, nav3, nav4, nav5]
        self.viewControllers = controllers
    }
    
    func initSideMenu(_ viewController: UIViewController) {
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
