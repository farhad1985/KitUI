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
    
    @discardableResult
    func left(to: NSLayoutAnchor<NSLayoutXAxisAnchor>,
              constant: CGFloat = 0) -> Self {
        

        self.leftAnchor
            .constraint(equalTo: to, constant: constant)
            .isActive = true
        return self
    }
    
    @discardableResult
    func right(to: NSLayoutAnchor<NSLayoutXAxisAnchor>,
              constant: CGFloat = 0) -> Self {
        
        self.rightAnchor
            .constraint(equalTo: to, constant: -constant)
            .isActive = true
        
        return self
    }

    @discardableResult
    func top(to: NSLayoutAnchor<NSLayoutYAxisAnchor>,
              constant: CGFloat = 0) -> Self {
        
        self.topAnchor
            .constraint(equalTo: to, constant: constant)
            .isActive = true
        
        return self
    }
    
    @discardableResult
    func bottom(to: NSLayoutAnchor<NSLayoutYAxisAnchor>,
              constant: CGFloat = 0) -> Self {
        
        self.bottomAnchor
            .constraint(equalTo: to, constant: -constant)
            .isActive = true
        
        return self
    }
    
    @discardableResult
    func centerX(to: NSLayoutAnchor<NSLayoutXAxisAnchor>,
              constant: CGFloat = 0) -> Self {
        
        self.centerXAnchor
            .constraint(equalTo: to, constant: constant)
            .isActive = true
        
        return self
    }
    
    @discardableResult
    func centerY(to: NSLayoutAnchor<NSLayoutYAxisAnchor>,
              constant: CGFloat = 0) -> Self {
        
        self.centerYAnchor
            .constraint(equalTo: to, constant: constant)
            .isActive = true
        
        return self
    }
    
    @discardableResult
    func center(to: UIView) -> UIView {
        
        self.centerYAnchor
            .constraint(equalTo: to.centerYAnchor)
            .isActive = true
        
        self.centerXAnchor
            .constraint(equalTo: to.centerXAnchor)
            .isActive = true

        
        return self

    }
    
    @discardableResult
    func all(view: UIView) -> Self {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: view.topAnchor),
            self.rightAnchor.constraint(equalTo: view.rightAnchor),
            self.leftAnchor.constraint(equalTo: view.leftAnchor),
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        return self
    }
    
    @discardableResult
    func all(view: UIView, constant: CGFloat) -> Self {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: view.topAnchor, constant: constant),
            self.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -constant),
            self.leftAnchor.constraint(equalTo: view.leftAnchor, constant: constant),
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -constant),
        ])
        
        return self
    }

    @discardableResult
    func height(constant: CGFloat) -> Self {
        self.heightAnchor.constraint(equalToConstant: constant).isActive = true
        return self
    }
    
    @discardableResult
    func width(constant: CGFloat) -> Self {
        self.widthAnchor.constraint(equalToConstant: constant).isActive = true
        return self
    }
    
    @discardableResult
    func ratio(constant: CGFloat) -> Self {
        self.heightAnchor.constraint(equalToConstant: constant).isActive = true
        self.widthAnchor.constraint(equalToConstant: constant).isActive = true
        return self
    }
}

