//
//  EXView.swift
//  KitUI
//
//  Created by Farhad on 6/2/21.
//

import UIKit

public extension UIView {
    
    func add(base: UIView) -> Self {
        base.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        return self
    }
    
    func setCorner(radius: CGFloat) -> UIView {
        layer.cornerRadius = radius
        layer.masksToBounds = true
        return self
    }
    
    func setBackground(color: UIColor) -> UIView {
        backgroundColor = color
        return self
    }
    
    func setBackground(hex: String) -> UIView {
        let color = UIColor.fromHex(hex: hex)
        backgroundColor = color
        return self
    }
    
    func setHidden(isHidden: Bool) -> UIView {
        self.isHidden = isHidden
        return self
    }
    
    func setShadow(radius: CGFloat, alpha: Float = 0.3) -> UIView {
        let vw = UIView()
        
        self.layer.shadowRadius = radius
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = alpha
        
        vw
            .add(base: self)
            .make()
        
        self
            .all(view: vw, constant: 0)
            .make()
        
        return vw
    }
}

