//
//  FlowLayout.swift
//  DatasourceDemo
//
//  Created by nixnoughtnothing on 1/22/17.
//  Copyright © 2017 Sttir. All rights reserved.
//

import UIKit

class FlowLayout: UICollectionViewFlowLayout {
    
    // MARK: - Initialize
    override init() {
        super.init()
        
        scrollDirection = .vertical
        minimumInteritemSpacing = 1.0
        minimumLineSpacing = 1.0
        headerReferenceSize = .zero
        footerReferenceSize = .zero
        sectionInset = .zero
        
        let deviceSize: CGSize = UIScreen.main.bounds.size
        itemSize = CGSize(
                    width: (deviceSize.width - 3.0) / 3.0,
                    height: (deviceSize.height - 3.0) / 3.0
                )
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
