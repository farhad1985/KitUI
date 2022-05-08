//
//  EXLabel.swift
//  KitUI
//
//  Created by Farhad on 6/2/21.
//

import UIKit

public extension UILabel {
    
    @discardableResult
    func setFont(font: UIFont) -> UILabel {
        self.font = font
        return self
    }
    
    @discardableResult
    func setTitle(string: String) -> UILabel {
        self.text = string
        return self
    }
    
    @discardableResult
    func setScaleFont(size: CGFloat) -> UILabel {
        self.minimumScaleFactor = size
        self.adjustsFontSizeToFitWidth = true
        return self
    }

    @discardableResult
    func setColor(color: UIColor) -> UILabel {
        textColor = color
        return self
    }
    
    @discardableResult
    func setColor(hex: String) -> UILabel {
        textColor = UIColor.fromHex(hex: hex)
        return self
    }
    
    @discardableResult
    func setNumberLine(line: Int) -> UILabel {
        numberOfLines = line
        return self
    }
    
    @discardableResult
    func setAligment(align: NSTextAlignment) -> UILabel {
        self.textAlignment = align
        return self
    }
}
