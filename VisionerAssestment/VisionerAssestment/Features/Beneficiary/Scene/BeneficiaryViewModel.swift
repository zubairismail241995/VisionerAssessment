//  
//  BeneficiaryViewModel.swift
//  VisionerAssestment
//
//  Created by usama farooq on 12/07/2023.
//

import Foundation

typealias BeneficiaryViewModelOutput = (BeneficiaryViewModelImpl.Output) -> Void

protocol BeneficiaryViewModelInput {
    
}

protocol BeneficiaryViewModel: BeneficiaryViewModelInput {
    var output: BeneficiaryViewModelOutput? { get set}
    
    func viewModelDidLoad()
    func viewModelWillAppear()
    func numberOfRows() -> Int
    func didSelect(with row: Int)
    func item(at row: Int) -> BeneficiaryModel
}

final class BeneficiaryViewModelImpl: BeneficiaryViewModel, BeneficiaryViewModelInput {

    

    private let router: BeneficiaryRouter
    var output: BeneficiaryViewModelOutput?
    var benificairiesArray: [BeneficiaryModel] = []
    var beneficiaryService: BeneficiaryServiceProtocol
    
    init(router: BeneficiaryRouter, beneficiaryService: BeneficiaryServiceProtocol) {
        self.router = router
        self.beneficiaryService = beneficiaryService
        
    }
    
    func viewModelDidLoad() {
        guard let data = beneficiaryService.getData(forName: "") else {return}
        benificairiesArray = data
        output?(.reload)
    }
    
    func viewModelWillAppear() {
        
    }
    
    //For all of your viewBindings
    enum Output {
        case reload
        
    }
    //MARK: - get Detail View
    func numberOfRows() -> Int {
        benificairiesArray.count
    }
    
    func didSelect(with row: Int) {
        let item = benificairiesArray[row]
        router.callBeneficiaryDetailView(benefiaryModel: item)
    }
    
    func item(at row: Int) -> BeneficiaryModel {
        let item = benificairiesArray[row]
        return item
    }
    
 
}

extension BeneficiaryViewModelImpl {

}
