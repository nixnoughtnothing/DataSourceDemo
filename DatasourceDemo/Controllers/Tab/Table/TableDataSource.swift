//
//  TableDataSource.swift
//  DatasourceDemo
//
//  Created by nixnoughtnothing on 1/27/17.
//  Copyright © 2017 Sttir. All rights reserved.
//

import UIKit

class TableDataSource: NSObject { }

// MARK: - DataSources
extension TableDataSource: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.tableViewCell) else {
            return TableViewCell()
        }
        
        configureCell(cell: cell, indexPath: indexPath)
        
        return cell
    }
}

// MARK: - Private
private extension TableDataSource {
    func configureCell(cell: TableViewCell, indexPath: IndexPath) {
        
        // INFO: Background Color(Random)
        let hue: CGFloat = CGFloat(arc4random() % 256) / 256
        let color: UIColor = UIColor(hue: hue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        
        cell.backgroundColor = color
        
        // INFO: Label
        cell.label.text = "\(indexPath.row)"
    }
}
