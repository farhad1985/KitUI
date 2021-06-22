//
//  EXStack.swift
//  KitUI
//
//  Created by Farhad on 6/2/21.
//

import UIKit

public extension UIStackView {
    
    func stack(space: CGFloat) -> UIStackView {
        self.spacing = space
        return self
    }
    
    func stack(alignment: UIStackView.Alignment,
               space: CGFloat) -> UIStackView {
        
        self.axis = .horizontal
        self.alignment = alignment
        self.spacing = space
        return self
    }

    func stack(axis: NSLayoutConstraint.Axis,
               alignment: UIStackView.Alignment,
               space: CGFloat) -> UIStackView {
        
        self.axis = axis
        self.alignment = alignment
        self.spacing = space
        return self
    }
    
    func addArrange(views: UIView...) -> UIStackView {
        for v in views {
            self.addArrangedSubview(v)
        }
        
        return self
    }
}
