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
}

