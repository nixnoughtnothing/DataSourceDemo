//
//  TableViewController.swift
//  DatasourceDemo
//
//  Created by nixnoughtnothing on 1/27/17.
//  Copyright © 2017 Sttir. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    lazy var dataSource = TableDataSource()
    
    // MARK: - LifeCycles
    override func loadView() {
        if let tableView = R.nib.tableView.firstView(owner: self) {
            self.view = tableView
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(R.nib.tableViewCell)
        tableView.dataSource = dataSource
        tableView.delegate = self
    }
}

// MARK: - UITableViewDelegate
extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("didSelectItemAt: \(indexPath.row)")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}
