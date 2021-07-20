//
//  SPCustomButton.swift
//  ExampleKitUI
//
//  Created by Farhad on 7/20/21.
//

import UIKit
import KitUI

class SPCustomButton: UIView {
    
    private let btnShare = UIButton()

    private var title: String = ""
    private var icon: UIImage?
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func setTitle(title: String, icon: UIImage? = nil) -> SPCustomButton {
         btnShare
            .setTitle(title: title, icon: icon)
            .make()
        
        return self
    }
    
    private func setupView() {
        btnShare
            .setColor(color: .black)
            .setBackground(color: .white)
            .setCorner(radius: 12)
            .add(base: self)
            .all(view: self)
            .make()
    }
}
