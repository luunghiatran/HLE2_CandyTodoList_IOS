//
//  ExampleIrregularityContentView.swift
//  ESTabBarControllerExample
//
//  Created by lihao on 2017/2/9.
//  Copyright © 2018年 Egg Swift. All rights reserved.
//

import UIKit
import pop
import ESTabBarController_swift
import UIColor_Hex_Swift

class AppTabContentView: BaseTabContentView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //self.renderingMode = .alwaysOriginal
        
        iconColor = UIColor(hex: "243B6B", alpha: 0.5)
        highlightIconColor = UIColor(hex: "243B6B", alpha: 1.0)
        
        //backdropColor = UIColor.red
        //highlightBackdropColor = UIColor.orange
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
