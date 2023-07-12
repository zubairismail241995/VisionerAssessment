//  
//  BeneficiaryViewController.swift
//  VisionerAssestment
//
//  Created by usama farooq on 12/07/2023.
//

import UIKit

final public class BeneficiaryViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak private var tableView: UITableView!
    
    var viewModel: BeneficiaryViewModel!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        configureAppearance()
        bindViewModel()
        viewModel.viewModelDidLoad()
    }
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.viewModelWillAppear()
    }
    
    fileprivate func bindViewModel() {

        viewModel.output = { [unowned self] output in
            //handle all your bindings here
            switch output {
            case .reload:
                reloadData()
            }
        }
    }
    
}

extension BeneficiaryViewController {
    func configureAppearance() {
        title = "Beneficiary"
        tableView.register(cellType: BenifiaryListTableViewCell.self)
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    func reloadData(){
        self.tableView.reloadData()
    }
}
extension BeneficiaryViewController: UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows()
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(with: BenifiaryListTableViewCell.self, for: indexPath)
        let item = viewModel.item(at: indexPath.row)
        cell.accessoryType = .disclosureIndicator
        cell.config(with: item)
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        viewModel.didSelect(with: indexPath.row)
    }
    
    
    
}
