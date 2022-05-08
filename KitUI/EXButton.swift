//
//  EXButton.swift
//  KitUI
//
//  Created by Farhad on 6/2/21.
//

import UIKit

public extension UIButton {
    
    @discardableResult
    func setFont(font: UIFont) -> UIButton {
        titleLabel?
            .setFont(font: font)
        
        return self
    }
    
    @discardableResult
    func setTitle(title: String = "", icon: UIImage? = nil) -> UIButton {
        self.setTitle(title, for: .normal)
        
        if let img = icon {
            setImage(img, for: .normal)
        }
        
        return self
    }
    
    @discardableResult
    func setColor(color: UIColor) -> UIButton {
        setTitleColor(color, for: .normal)
        return self
    }
    
    @discardableResult
    func setColor(hex: String) -> UIButton {
        let color = UIColor.fromHex(hex: hex)
        setTitleColor(color, for: .normal)
        return self
    }
    
    @discardableResult
    func setBackgroundColor(color: UIColor) -> UIButton {
        backgroundColor = color
        return self
    }
    
    @discardableResult
    func setBackgroundColor(hex: String) -> UIButton {
        let color = UIColor.fromHex(hex: hex)
        backgroundColor = color
        return self
    }
}
