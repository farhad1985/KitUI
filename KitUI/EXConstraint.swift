//
//  EXConstraint.swift
//  KitUI
//
//  Created by Farhad on 6/19/21.
//  Copyright © 2021 AsanPardakht. All rights reserved.
//

import UIKit

// MARK: Constraint
public extension UIView {
    
    func left(to: NSLayoutAnchor<NSLayoutXAxisAnchor>,
              constant: CGFloat = 0) -> UIView {
        

        self.leftAnchor
            .constraint(equalTo: to, constant: constant)
            .isActive = true
        return self
    }
    
    func right(to: NSLayoutAnchor<NSLayoutXAxisAnchor>,
              constant: CGFloat = 0) -> UIView {
        
        self.rightAnchor
            .constraint(equalTo: to, constant: -constant)
            .isActive = true
        
        return self
    }

    func top(to: NSLayoutAnchor<NSLayoutYAxisAnchor>,
              constant: CGFloat = 0) -> UIView {
        
        self.topAnchor
            .constraint(equalTo: to, constant: constant)
            .isActive = true
        
        return self
    }
    
    func bottom(to: NSLayoutAnchor<NSLayoutYAxisAnchor>,
              constant: CGFloat = 0) -> UIView {
        
        self.bottomAnchor
            .constraint(equalTo: to, constant: -constant)
            .isActive = true
        
        return self
    }
    
    func centerX(to: NSLayoutAnchor<NSLayoutXAxisAnchor>,
              constant: CGFloat = 0) -> UIView {
        
        self.centerXAnchor
            .constraint(equalTo: to, constant: constant)
            .isActive = true
        
        return self
    }
    
    
    func centerY(to: NSLayoutAnchor<NSLayoutYAxisAnchor>,
              constant: CGFloat = 0) -> UIView {
        
        self.centerYAnchor
            .constraint(equalTo: to, constant: constant)
            .isActive = true
        
        return self
    }
    
    func center(to: UIView) -> UIView {
        
        self.centerYAnchor
            .constraint(equalTo: to.centerYAnchor)
            .isActive = true
        
        self.centerXAnchor
            .constraint(equalTo: to.centerXAnchor)
            .isActive = true

        
        return self

    }
    
    func all(view: UIView) -> UIView {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: view.topAnchor),
            self.rightAnchor.constraint(equalTo: view.rightAnchor),
            self.leftAnchor.constraint(equalTo: view.leftAnchor),
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        return self
    }
    
    func all(view: UIView, constant: CGFloat) -> UIView {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: view.topAnchor, constant: constant),
            self.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -constant),
            self.leftAnchor.constraint(equalTo: view.leftAnchor, constant: constant),
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -constant),
        ])
        
        return self
    }

    
    func height(constant: CGFloat) -> UIView {
        self.heightAnchor.constraint(equalToConstant: constant).isActive = true
        return self
    }
    
    func width(constant: CGFloat) -> UIView {
        self.widthAnchor.constraint(equalToConstant: constant).isActive = true
        return self
    }
    
    func ratio(constant: CGFloat) -> UIView {
        self.heightAnchor.constraint(equalToConstant: constant).isActive = true
        self.widthAnchor.constraint(equalToConstant: constant).isActive = true
        return self
    }

    func make() {
    }
}

