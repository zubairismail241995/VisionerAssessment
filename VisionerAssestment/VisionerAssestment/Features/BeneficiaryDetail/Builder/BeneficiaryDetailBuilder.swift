//  
//  BeneficiaryDetailBuilder.swift
//  VisionerAssestment
//
//  Created by usama farooq on 12/07/2023.
//

import Foundation
import UIKit

class BeneficiaryDetailBuilder {

    func build(with navigationController: UINavigationController?, benefiaryModel: BeneficiaryModel) -> UIViewController {
        
        let storyboard = UIStoryboard(name: "BeneficiaryDetail", bundle: Bundle(for: BeneficiaryDetailBuilder.self))
        let viewController = storyboard.instantiateViewController(withIdentifier: "BeneficiaryDetailViewController") as! BeneficiaryDetailViewController
        let coordinator = BeneficiaryDetailRouter(navigationController: navigationController)
        let viewModel = BeneficiaryDetailViewModelImpl(router: coordinator, benefiaryModel: benefiaryModel)

        viewController.viewModel = viewModel
        
        return viewController
    }
}


