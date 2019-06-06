//
//  UITableViewController+Extentions.swift
//  CandyTodoList
//
//  Created by NghiaTL on 5/28/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit

// https://spin.atomicobject.com/2017/08/11/swift-extending-uitableviewcontroller/
extension UITableViewController {
    func sizeHeaderToFit() {
        if let headerView = tableView.tableHeaderView {
            
            headerView.setNeedsLayout()
            headerView.layoutIfNeeded()
            
            let height = headerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
            var frame = headerView.frame
            frame.size.height = height
            headerView.frame = frame
            
            tableView.tableHeaderView = headerView
        }
    }
    
    func sizeFooterToFit() {
        if let footerView = tableView.tableFooterView {
            footerView.setNeedsLayout()
            footerView.layoutIfNeeded()
            
            let height = footerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
            var frame = footerView.frame
            frame.size.height = height
            footerView.frame = frame
            
            tableView.tableFooterView = footerView
        }
    }
}
