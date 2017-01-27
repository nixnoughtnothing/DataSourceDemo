//
//  TabBarControllerViewController.swift
//  DatasourceDemo
//
//  Created by nixnoughtnothing on 1/27/17.
//  Copyright © 2017 Sttir. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    enum TabMenu: Int {
        case table = 0
        case collection = 1
    }
    
    // MARK: LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setupNavTitle()
    }
}

// MARK: - UITabBarControllerDelegate
extension TabBarViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        setupNavTitle()
    }
}

// MARK: - Private
private extension TabBarViewController {
    func setupNavTitle() {
        let menu: TabMenu = TabMenu(rawValue: selectedIndex) ?? .table
        switch menu {
        case .table:
            self.navigationItem.title = "TableDataSource Demo"
        case .collection:
            self.navigationItem.title = "CollectionDataSource Demo"
        }
    }
}
