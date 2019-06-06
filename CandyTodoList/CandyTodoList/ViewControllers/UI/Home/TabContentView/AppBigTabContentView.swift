//
//  AppBigTabContentView.swift
//  CandyTodoList
//
//  Created by NghiaTL on 5/30/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit
import pop
import ESTabBarController_swift

class AppBigTabContentView: BaseTabContentView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.renderingMode = .alwaysOriginal
        
        //        self.imageView.backgroundColor = UIColor.red
        //        self.imageView.layer.borderWidth = 3.0
        //        self.imageView.layer.borderColor = UIColor.blue.cgColor
        //        self.imageView.layer.cornerRadius = 35
        //        self.insets = UIEdgeInsets.init(top: -32, left: 0, bottom: 0, right: 0)
        //        let transform = CGAffineTransform.identity
        //        self.imageView.transform = transform
        //        self.superview?.bringSubviewToFront(self)
        //
        //        textColor = UIColor.init(white: 255.0 / 255.0, alpha: 1.0)
        //        highlightTextColor = UIColor.init(white: 255.0 / 255.0, alpha: 1.0)
        
        //        iconColor = UIColor.cyan
        //        highlightIconColor = UIColor.purple
        //        backdropColor = .clear
        //        highlightBackdropColor = .clear
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let newPoint = CGPoint.init(x: point.x - imageView.frame.origin.x, y: point.y - imageView.frame.origin.y)
        return sqrt(pow(imageView.bounds.size.width / 2.0 - newPoint.x, 2) + pow(imageView.bounds.size.height / 2.0 - newPoint.y, 2)) < imageView.bounds.size.width / 2.0
    }
    
    override func updateLayout() {
        super.updateLayout()
        self.imageView.sizeToFit()
        self.imageView.center = CGPoint.init(x: self.bounds.size.width / 2.0, y: self.bounds.size.height / 2.0)
    }
    
    // MARK: SELECT ANIMATION
    public override func selectAnimation(animated: Bool, completion: (() -> Void)?) {
        let view = UIView.init(frame: CGRect.init(origin: CGPoint.zero, size: CGSize(width: 2.0, height: 2.0)))
        view.layer.cornerRadius = 1.0
        view.layer.opacity = 0.5
        view.backgroundColor = UIColor.init(red: 10/255.0, green: 66/255.0, blue: 91/255.0, alpha: 1.0)
        self.addSubview(view)
    }
    
    public override func reselectAnimation(animated: Bool, completion: (() -> Void)?) {
        completion?()
    }
    
    public override func deselectAnimation(animated: Bool, completion: (() -> Void)?) {
        completion?()
    }
    
    public override func highlightAnimation(animated: Bool, completion: (() -> Void)?) {
        UIView.beginAnimations("small", context: nil)
        UIView.setAnimationDuration(0.2)
        let transform = self.imageView.transform.scaledBy(x: 0.8, y: 0.8)
        self.imageView.transform = transform
        UIView.commitAnimations()
        completion?()
    }
    
    public override func dehighlightAnimation(animated: Bool, completion: (() -> Void)?) {
        UIView.beginAnimations("big", context: nil)
        UIView.setAnimationDuration(0.2)
        let transform = CGAffineTransform.identity
        self.imageView.transform = transform
        UIView.commitAnimations()
        completion?()
    }
}
