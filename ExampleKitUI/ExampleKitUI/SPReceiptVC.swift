//
//  ReceiptVC.swift
//  SuperPay
//
//  Created by Farhad on 7/19/21.
//  Copyright © 2021 AsanPardakht. All rights reserved.
//

import UIKit
import KitUI

class SPReceiptVC: UIViewController {
    
    let backgroundImage = UIImageView()
    let imgStateReceipt = UIImageView()

    let vwMain = UIView()
    let vwCard = UIView()
    
    let vwAddNumberCard = UIView()

    let stMain = UIStackView()
    let stMainAction = UIStackView()
    let stActions = UIStackView()

    let lblStateReceipt = UILabel()
    let lblDekont = UILabel()

    let table = UITableView()
    let btnShare = SPCustomButton()
    let btnInquery = SPCustomButton()
    let btnPreview = SPCustomButton()

    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        
        backgroundImage
            .setImage(image: UIImage(named: "grayBack"))
            .add(base: self.view)
            .all(view: self.view)
            .make()
        
        vwMain
            .setShadow(radius: 5)
            .make()
        
        vwCard
            .setBackground(color: .white)
            .setCorner(radius: 18)
            .add(base: vwMain)
            .left(to: vwMain.leftAnchor)
            .right(to: vwMain.rightAnchor)
            .bottom(to: vwMain.bottomAnchor)
            .make()
        
        imgStateReceipt
            .setImage(image: UIImage(named: "spSuccess"))
            .add(base: vwMain)
            .ratio(constant: 120)
            .centerX(to: vwMain.centerXAnchor, constant: 10)
            .top(to: vwMain.topAnchor)
            .bottom(to: vwCard.topAnchor, constant: -48)
            .make()
        
        lblStateReceipt
            .setColor(color: .systemGreen)
            .setTitle(string: "Payment Successfull")
            .setFont(font: UIFont.boldSystemFont(ofSize: 22))
            .add(base: vwMain)
            .top(to: imgStateReceipt.bottomAnchor, constant: 0)
            .centerX(to: vwMain.centerXAnchor)
            .make()
        
        lblDekont
            .setColor(color: .black)
            .setTitle(string: "Dekone")
            .setFont(font: UIFont.boldSystemFont(ofSize: 15))
            .add(base: vwMain)
            .top(to: lblStateReceipt.bottomAnchor, constant: 8)
            .centerX(to: vwMain.centerXAnchor)
            .make()
        
        table
            .add(base: vwCard)
            .top(to: lblDekont.bottomAnchor, constant: 16)
            .left(to: vwCard.leftAnchor)
            .right(to: vwCard.rightAnchor)
            .bottom(to: vwCard.bottomAnchor)
            .make()
        
        vwAddNumberCard
            .setBackground(color: .red)
            .height(constant: 40)
            .make()
        
        btnShare
            .setTitle(title: "Share")
            .height(constant: 55)
            .setShadow(radius: 8)
            .make()
        
        btnInquery
            .setTitle(title: "Inquery")
            .height(constant: 55)
            .setShadow(radius: 8)
            .make()
        
        btnPreview
            .setTitle(title: "Preview")
            .height(constant: 55)
            .setShadow(radius: 8)
            .make()
        
        stActions
            .stack(distribution: .fillEqually, space: 12)
            .addArrange(views: btnShare, btnInquery)
            .make()


        stMainAction
            .stack(axis: .vertical, alignment: .fill, space: 12)
            .addArrange(views: btnPreview, stActions)
            .make()

        stMain
            .stack(axis: .vertical, alignment: .fill, space: 8)
            .addArrange(views: vwMain, vwAddNumberCard, stMainAction)
            .add(base: self.view)
            .all(view: self.view, constant: 24)
            .make()
    }
}
