//  
//  BeneficiaryDetailViewController.swift
//  VisionerAssestment
//
//  Created by usama farooq on 12/07/2023.
//

import UIKit

public class BeneficiaryDetailViewController: UIViewController {
    
    
    @IBOutlet weak var fName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var bType: UILabel!
    @IBOutlet weak var designation: UILabel!
    
    @IBOutlet weak var ssn: UILabel!
    @IBOutlet weak var dob: UILabel!
    @IBOutlet weak var pNumber: UILabel!
    @IBOutlet weak var address: UILabel!

    var viewModel: BeneficiaryDetailViewModel!
    
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
            default:
                break
            }
        }
    }
}

extension BeneficiaryDetailViewController {
    func configureAppearance() {
        let item = viewModel.getDataModel()
        self.title = item.firstName
        loadData()
    }
    func loadData(){
       let item = viewModel.getDataModel()
        fName.text = item.firstName
        lastName.text = item.lastName
        bType.text = item.beneType
        designation.text = BenificiaryDesignation(rawValue: item.designationCode)?.getValue() ?? ""
        
        ssn.text = item.socialSecurityNumber
        dob.text = item.dateOfBirth.convertDateFormat(from: "MMddyyyy", to: "MM/dd/yyyy")
        pNumber.text = item.phoneNumber
        address.text = "\(item.beneficiaryAddress.firstLineMailing)"
        
        

    }
}
