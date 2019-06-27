//
//  MenuViewController.swift
//  CandyTodoList
//
//  Created by NghiaTL on 5/31/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit

private let rowHeight: CGFloat = 56

class MenuViewController: UIViewController {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var userNameImageView: UILabel!
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var menuTableView: UITableView!
    
    let menuItems = [
        "To-do",
        "Scheduler",
        "Notifications",
        "Profile",
        "Logout"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

// MARK: === Static Func ===
extension MenuViewController {
    
    func setupView() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        setupAvatar()
        setupMenuList()
    }
    
    func setupAvatar() {
        // corner avatar
        avatarImageView.layer.cornerRadius = 17
        avatarImageView.clipsToBounds = true
        // border avatar
        avatarImageView.layer.borderColor = UIColor(named: "AppAvatarBorder")?.cgColor
        avatarImageView.layer.borderWidth = 1
    }
    
    func setupMenuList() {
        let menuCell = UINib(nibName: "MenuCell", bundle: nil)
        menuTableView.register(menuCell, forCellReuseIdentifier: "menu_cell")
        menuTableView.delegate = self
        menuTableView.dataSource = self
        menuTableView.rowHeight = rowHeight
        
        menuTableView.separatorStyle = .none
    }
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menu_cell") as? MenuCell
        cell?.setData(data: menuItems[indexPath.row])
        return cell!
    }
}
