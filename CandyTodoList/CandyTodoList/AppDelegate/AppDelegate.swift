//
//  AppDelegate.swift
//  CandyTodoList
//
//  Created by NghiaTL on 5/28/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let controller = LoginViewController.create()
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}

extension AppDelegate {
    
    func setupHomeScreen() {
        // Make HomeScreen is RootView
        let tab = HomeTabBarController.init()
        window?.rootViewController = tab
        window?.makeKeyAndVisible()
    }
}
