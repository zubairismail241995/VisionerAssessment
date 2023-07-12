//  
//  BeneficiaryRouter.swift
//  VisionerAssestment
//
//  Created by usama farooq on 12/07/2023.
//

import Foundation
import UIKit

class BeneficiaryRouter {
    private weak var navigationController: UINavigationController?

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    func callBeneficiaryDetailView(benefiaryModel: BeneficiaryModel){
        let module = BeneficiaryDetailBuilder().build(with: self.navigationController, benefiaryModel: benefiaryModel)
        navigationController?.pushViewController(module, animated: true)
    }
}

extension BeneficiaryRouter {

}
