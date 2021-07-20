//
//  ListView.swift
//  KitUI
//
//  Created by Farhad on 7/14/21.
//

import UIKit

open class ListView: UIView, UITableViewDataSource {
    
    private var tableView = UITableView() 
    private var count = 0
    
    public init() {
        super.init(frame: .zero)
        
        tableView
            .add(base: self)
            .all(view: self)
            .make()
        
        tableView.dataSource = self
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func countItem(count: Int) -> ListView {
        self.count = count
        return self
    }
    
    public func reload() {
        tableView.reloadData()
    }
    
    func set(handler: (_ indexPath: IndexPath) -> UITableViewCell) {
        
    }
    
    public func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return count
    }
    
    public func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = "hello"
        
        return cell
    }
}
