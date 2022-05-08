//
//  EXImageView.swift
//  KitUI
//
//  Created by Farhad on 6/7/21.
//


import UIKit

public extension UIImageView {
    
    @discardableResult
    func setImage(image: UIImage?) -> UIImageView {
        guard let img = image else { return self}
        self.image = img
        return self
    }
}
