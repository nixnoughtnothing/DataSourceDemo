# DataSourceDemo
Separating DataSource from VC (example)  
###### Written in `Swift 3.0.2`

e.g.
TableView
```
// INFO: TableViewController.swift

import UIKit

class TableViewController: UIViewController {
    // MARK: - Properties
    lazy var dataSource = TableDataSource()
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(R.nib.tableViewCell) // INFO: using R.swift
        tableView.dataSource = dataSource
        // ...
    }
    
    // ...
}
```

```
// INFO: TableDataSource.swift

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
        // ...
        return TableViewCell()
    }
}
```

# In more detail
https://github.com/nixnoughtnothing/DataSourceDemo/tree/master/DatasourceDemo/Controllers/Tab
