//
//  EXStack.swift
//  KitUI
//
//  Created by Farhad on 6/2/21.
//

import UIKit

public extension UIStackView {
    
    @discardableResult
    func stack(space: CGFloat) -> UIStackView {
        self.spacing = space
        return self
    }
    
    @discardableResult
    func stack(axis: NSLayoutConstraint.Axis = .horizontal,
               alignment: UIStackView.Alignment = .fill,
               distribution: UIStackView.Distribution = .fill,
               space: CGFloat = 0) -> UIStackView {
        
        self.axis = axis
        self.distribution = distribution
        self.alignment = alignment
        self.spacing = space
        return self
    }
    
    @discardableResult
    func addArrange(views: UIView...) -> UIStackView {
        for v in views {
            self.addArrangedSubview(v)
        }
        
        return self
    }
}
