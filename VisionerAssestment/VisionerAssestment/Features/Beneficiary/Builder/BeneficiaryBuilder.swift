//  
//  BeneficiaryBuilder.swift
//  VisionerAssestment
//
//  Created by usama farooq on 12/07/2023.
//

import Foundation
import UIKit

class BeneficiaryBuilder {

    func build(with navigationController: UINavigationController?, beneficiaryService: BeneficiaryServiceProtocol) -> UIViewController {
        
        let storyboard = UIStoryboard(name: "Beneficiary", bundle: Bundle(for: BeneficiaryBuilder.self))
        let viewController = storyboard.instantiateViewController(withIdentifier: "BeneficiaryViewController") as! BeneficiaryViewController
        let coordinator = BeneficiaryRouter(navigationController: navigationController)
        let viewModel = BeneficiaryViewModelImpl(router: coordinator, beneficiaryService: beneficiaryService)

        viewController.viewModel = viewModel
        
        return viewController
    }
}


