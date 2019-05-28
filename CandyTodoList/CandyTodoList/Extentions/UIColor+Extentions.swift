//
//  ExtUIColor.swift
//  NghiaDigitalClock
//
//  Created by NghiaTL on 5/23/19.
//  Copyright © 2019 BTS. All rights reserved.
//

import UIKit

extension UIColor {
    
    /**
     for hex 6 characters
     **/
    static func genFromHex(hex: String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor(white: 1.0, alpha: 1.0)
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
