//
//  ViewController.swift
//  ExampleKitUI
//
//  Created by Farhad on 6/22/21.
//

import UIKit
import KitUI

class ViewController: UIViewController {
    
    let vwMain = UIView()
    let lblName = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupView()
    }
    
    private func setupView() {
        
        vwMain
            .add(base: self.view)
            .setBackground(color: .purple)
            .setCorner(radius: 16)
            .width(constant: 200)
            .height(constant: 80)
            .center(to: self.view)
            .make()
        
        lblName
            .add(base: vwMain)
            .setColor(color: .white)
            .setTitle(string: "Hello KitUI")
            .center(to: vwMain)
            .make()
    }
}

