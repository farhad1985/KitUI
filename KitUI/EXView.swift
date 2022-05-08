//
//  EXView.swift
//  KitUI
//
//  Created by Farhad on 6/2/21.
//

import UIKit

public extension UIView {
    
    @discardableResult
    func add(base: UIView) -> Self {
        base.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        return self
    }
    
    @discardableResult
    func setCorner(radius: CGFloat) -> UIView {
        layer.cornerRadius = radius
        layer.masksToBounds = true
        return self
    }
    
    @discardableResult
    func setBackground(color: UIColor) -> UIView {
        backgroundColor = color
        return self
    }
    
    @discardableResult
    func setBackground(hex: String) -> UIView {
        let color = UIColor.fromHex(hex: hex)
        backgroundColor = color
        return self
    }
    
    @discardableResult
    func setHidden(isHidden: Bool) -> UIView {
        self.isHidden = isHidden
        return self
    }
    
    @discardableResult
    func setShadow(radius: CGFloat, alpha: Float = 0.3) -> UIView {
        let vw = UIView()
        
        self.layer.shadowRadius = radius
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = alpha
        
        vw
            .add(base: self)
        
        self
            .all(view: vw, constant: 0)
        
        return vw
    }
}

