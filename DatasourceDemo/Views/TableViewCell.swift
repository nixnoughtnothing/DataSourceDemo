//
//  TableViewCell.swift
//  DatasourceDemo
//
//  Created by nixnoughtnothing on 1/27/17.
//  Copyright © 2017 Sttir. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    // MARK: - Outlets
    @IBOutlet weak var label: UILabel!
    
    // MARK: - Initialize
    override func awakeFromNib() {
        super.awakeFromNib()
        
        label.textColor = .black
        label.font = UIFont(name: "Helvetica", size: 30.0)
    }
}
