//  
//  BeneficiaryDetailViewModel.swift
//  VisionerAssestment
//
//  Created by usama farooq on 12/07/2023.
//

import Foundation

typealias BeneficiaryDetailViewModelOutput = (BeneficiaryDetailViewModelImpl.Output) -> Void

protocol BeneficiaryDetailViewModelInput {
    
}

protocol BeneficiaryDetailViewModel: BeneficiaryDetailViewModelInput {
    var output: BeneficiaryDetailViewModelOutput? { get set}
    var benefiaryModel: BeneficiaryModel { get set }
    
    func viewModelDidLoad()
    func viewModelWillAppear()
    func getDataModel() -> BeneficiaryModel
}

final class BeneficiaryDetailViewModelImpl: BeneficiaryDetailViewModel, BeneficiaryDetailViewModelInput {
    
    var benefiaryModel: BeneficiaryModel
    private let router: BeneficiaryDetailRouter
    var output: BeneficiaryDetailViewModelOutput?
    
    init(router: BeneficiaryDetailRouter, benefiaryModel: BeneficiaryModel) {
        self.router = router
        self.benefiaryModel = benefiaryModel
    }
    
    func viewModelDidLoad() {
    }
    
    func viewModelWillAppear() {
        
    }
    
    //For all of your viewBindings
    enum Output {}
    //MARK: - Data Load
    func getDataModel() -> BeneficiaryModel {
        return self.benefiaryModel
    }
}

extension BeneficiaryDetailViewModelImpl {

}
