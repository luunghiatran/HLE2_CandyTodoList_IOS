//
//  UIFont+Extention.swift
//  CandyTodoList
//
//  Created by NghiaTL on 5/28/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit

struct AppFontName {
    static let light = "AvenirLTStd-Light"
    static let book = "AvenirLTStd-Book"
    static let roman = "AvenirLTStd-Roman"
    static let medium = "AvenirLTStd-Medium"
    static let lightOblique = "AvenirLTStd-LightOblique"
    static let bookOblique = "AvenirLTStd-BookOblique"
    static let oblique = "AvenirLTStd-Oblique"
    static let mediumOblique = "AvenirLTStd-MediumOblique"
    static let heavy = "AvenirLTStd-Heavy"
    static let black = "AvenirLTStd-Black"
    static let heavyOblique = "AvenirLTStd-HeavyOblique"
    static let blackOblique = "AvenirLTStd-BlackOblique"
}

extension UIFont {
    
    @objc
    class func applicationLightFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.light, size: size)!
    }
    
    @objc
    class func applicationBookFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.book, size: size)!
    }
    
    @objc
    class func applicationRomanFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.roman, size: size)!
    }

    @objc
    class func applicationMediumFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.medium, size: size)!
    }
    
    @objc
    class func applicationLightObliqueFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.lightOblique, size: size)!
    }
    
    @objc
    class func applicationBookObliqueFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.bookOblique, size: size)!
    }
    
    @objc
    class func applicationObliqueFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.oblique, size: size)!
    }
    
    @objc
    class func applicationMediumObliqueFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.mediumOblique, size: size)!
    }
    
    @objc
    class func applicationHeavyFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.heavy, size: size)!
    }
    
    @objc
    class func applicationBlackFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.black, size: size)!
    }
    
    @objc
    class func applicationHeavyObliqueFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.heavyOblique, size: size)!
    }
    
    @objc
    class func applicationBlackObliqueFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.blackOblique, size: size)!
    }

}
