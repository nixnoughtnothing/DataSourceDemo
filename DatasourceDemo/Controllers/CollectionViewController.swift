//
//  CollectionViewController.swift
//  DatasourceDemo
//
//  Created by nixnoughtnothing on 1/21/17.
//  Copyright © 2017 Sttir. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Properties
    lazy var dataSource = CollectionDataSource()
    var flowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 1.0
        layout.minimumLineSpacing = 1.0
        layout.headerReferenceSize = .zero
        layout.footerReferenceSize = .zero
        layout.sectionInset = .zero
        
        let deviceSize: CGSize = UIScreen.main.bounds.size
        layout.itemSize = CGSize(
            width: (deviceSize.width - 3.0) / 3.0,
            height: (deviceSize.height - 3.0) / 3.0
        )
        return layout
    }()
    
    // MARK: - LifeCycles
    override func loadView() {
        if let collectionView = R.nib.collectionView.firstView(owner: self) {
            self.view = collectionView
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
}

// MARK: - UICollectionViewDelegate
extension CollectionViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("didSelectItemAt: \(indexPath.row)")
    }
}

// MARK: - Private
private extension CollectionViewController {
    
    func setupCollectionView() {
        collectionView.register(R.nib.collectionViewCell)
        collectionView.dataSource = dataSource
        collectionView.delegate = self
        collectionView.collectionViewLayout = flowLayout
    }
}
