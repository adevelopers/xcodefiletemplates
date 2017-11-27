//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ViewModel {
    var items: [String] = []
    init() {
        items = ["Alfa","Betta", "Gamma", "Omega"]
    }
}

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {

    var tableView: UITableView!
    var viewModel: ViewModel!

    convenience init(model: ViewModel) {
        self.init(nibName: "___FILEBASENAMEASIDENTIFIER___", bundle: nil)
        viewModel = model
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
        
        configureTableView()
        
    }
    
    fileprivate func configureTableView() {
        tableView = UITableView(frame: CGRect(x: 0, y: 80, width: view.frame.width, height: view.frame.height - 80))
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
    }
    
}

extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = viewModel.items[indexPath.row]
        let cell = UITableViewCell(style: .default, reuseIdentifier: "defaultCell")
        cell.textLabel?.text = item
        return cell
    }
    
}

extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
