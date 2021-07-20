//
//  EXLabel.swift
//  KitUI
//
//  Created by Farhad on 6/2/21.
//

import UIKit

public extension UILabel {
    
    func setFont(font: UIFont) -> UILabel {
        self.font = font
        return self
    }
    
    func setTitle(string: String) -> UILabel {
        self.text = string
        return self
    }
    
    func setScaleFont(size: CGFloat) -> UILabel {
        self.minimumScaleFactor = size
        self.adjustsFontSizeToFitWidth = true
        return self
    }

    func setColor(color: UIColor) -> UILabel {
        textColor = color
        return self
    }
    
    func setColor(hex: String) -> UILabel {
        textColor = UIColor.fromHex(hex: hex)
        return self
    }
    
    func setNumberLine(line: Int) -> UILabel {
        numberOfLines = line
        return self
    }
    
    func setAligment(align: NSTextAlignment) -> UILabel {
        self.textAlignment = align
        return self
    }
}
