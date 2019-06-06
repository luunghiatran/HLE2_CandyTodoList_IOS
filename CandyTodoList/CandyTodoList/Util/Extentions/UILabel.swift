//
//  UILabel.swift
//  CandyTodoList
//
//  Created by NghiaTL on 5/28/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit

// https://spin.atomicobject.com/2017/08/04/swift-extending-uilabel/
extension UILabel {
    @IBInspectable
    var rotation: Int {
        get {
            return 0
        } set {
            let radians = CGFloat(CGFloat(Double.pi) * CGFloat(newValue) / CGFloat(180.0))
            self.transform = CGAffineTransform(rotationAngle: radians)
        }
    }
}
