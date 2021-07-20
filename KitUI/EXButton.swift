//
//  EXButton.swift
//  KitUI
//
//  Created by Farhad on 6/2/21.
//

import UIKit

public extension UIButton {
    
    func setFont(font: UIFont) -> UIButton {
        titleLabel?
            .setFont(font: font)
            .make()
        
        return self
    }
    
    func setTitle(title: String = "", icon: UIImage? = nil) -> UIButton {
        self.setTitle(title, for: .normal)
        
        if let img = icon {
            setImage(img, for: .normal)
        }
        
        return self
    }
    
    func setColor(color: UIColor) -> UIButton {
        setTitleColor(color, for: .normal)
        return self
    }
    
    func setColor(hex: String) -> UIButton {
        let color = UIColor.fromHex(hex: hex)
        setTitleColor(color, for: .normal)
        return self
    }
    
    func setBackgroundColor(color: UIColor) -> UIButton {
        backgroundColor = color
        return self
    }
    
    func setBackgroundColor(hex: String) -> UIButton {
        let color = UIColor.fromHex(hex: hex)
        backgroundColor = color
        return self
    }
}
