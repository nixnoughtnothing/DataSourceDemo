//
//  DataSource.swift
//  DatasourceDemo
//
//  Created by nixnoughtnothing on 1/22/17.
//  Copyright © 2017 Sttir. All rights reserved.
//

import UIKit

class DataSource: NSObject {}

// MARK: - DataSources
extension DataSource: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.demoViewCollectionViewCell, for: indexPath) else {
            return DemoViewCollectionViewCell()
        }
        
        configureCell(cell: cell, indexPath: indexPath)

        return cell
    }
}

// MARK: - Private
private extension DataSource {
    func configureCell(cell: DemoViewCollectionViewCell, indexPath: IndexPath) {

        // INFO: Background Color(Random)
        let hue: CGFloat = CGFloat(arc4random() % 256) / 256
        let color: UIColor = UIColor(hue: hue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        
        cell.backgroundColor = color
        
        // INFO: Label
        cell.label.text = "\(indexPath.row)"
    }
}
