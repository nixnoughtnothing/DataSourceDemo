//
//  CollectionViewCell.swift
//  DatasourceDemo
//
//  Created by nixnoughtnothing on 1/22/17.
//  Copyright © 2017 Sttir. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    // MARK: - Outlets
    @IBOutlet weak var label: UILabel!
    
    // MARK: - Initialize
    override func awakeFromNib() {
        super.awakeFromNib()

        label.textColor = .black
        label.font = UIFont(name: "Helvetica", size: 30.0)
    }
}
