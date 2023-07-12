//
//  AppStartup.swift
//  VisionerAssestment
//
//  Created by usama farooq on 12/07/2023.
//

import Foundation
import UIKit

final class AppStartup {
    let service = BeneficiaryService()
    func route(into window: UIWindow?) {
        let navigationController = UINavigationController()
        let module = BeneficiaryBuilder().build(with: navigationController, beneficiaryService: service)
        navigationController.setViewControllers([module], animated: false)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
    }
}
