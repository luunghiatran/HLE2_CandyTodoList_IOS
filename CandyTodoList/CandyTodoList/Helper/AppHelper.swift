//
//  AppHelper.swift
//  CandyTodoList
//
//  Created by NghiaTL on 6/7/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit
import EachNavigationBar
import SideMenu

class AppHelper {
    
    class func configHomeNavigationBar(viewController: UIViewController, title: String) {
        let navigation = viewController.navigation
        
        navigation.item.title = title
        
        // Shadow bar
        let shadowColor = UIColor(named: "AppPink")?.cgColor ?? UIColor.gray.cgColor
        navigation.bar.shadow = Shadow(
            color: shadowColor,
            opacity: 0.5,
            offset: CGSize(width: 0, height: 8)
        )
        
        // left menu button
        let menuImage = UIImage(named: "ic_menu")
        let menuImageColor = UIColor(named: "AppBlue") ?? UIColor.gray
        navigation.bar.backBarButtonItem = .init(style: .image(menuImage), tintColor: menuImageColor)
        
        navigation.bar.backBarButtonItem.shouldBack = {item in
            
            // Open Side menu
            guard let menu = SideMenuManager.default.menuLeftNavigationController else { return true }
            viewController.navigationController?.present(menu, animated: true, completion: nil)
            
            return true // not allow backButton back
        }
    }
}
