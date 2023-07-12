//
//  Beneficiary.swift
//  VisionerAssestment
//
//  Created by usama farooq on 12/07/2023.
//

import Foundation

// MARK: - BeneficiaryModel
struct BeneficiaryModel: Codable {
    let lastName, firstName, designationCode, beneType: String
    let socialSecurityNumber, dateOfBirth, middleName, phoneNumber: String
    let beneficiaryAddress: BeneficiaryAddress
}

// MARK: - BeneficiaryAddress
struct BeneficiaryAddress: Codable {
    let firstLineMailing: String
    var scndLineMailing: String?
    let city, zipCode, stateCode, country: String
}
