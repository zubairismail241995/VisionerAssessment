//
//  BeneficiaryService.swift
//  VisionerAssestment
//
//  Created by usama farooq on 12/07/2023.
//

import Foundation

protocol BeneficiaryServiceProtocol {
    func getData(forName name: String)  -> [BeneficiaryModel]?
}

class BeneficiaryService: BeneficiaryServiceProtocol {
    
    //MARK:- reading a json
    func getData(forName name: String)  -> [BeneficiaryModel]?{
        
        guard let fileURL = Bundle.main.url(forResource: name, withExtension: "json") else {return nil}
        do {
            let jsonData = try Data(contentsOf: fileURL)
            print(jsonData)
            // Continue with parsing the JSON data...
            let beneficiaries = try! JSONDecoder().decode([BeneficiaryModel].self, from: jsonData)
            return beneficiaries
          
            
            
        } catch {
            print("Error reading JSON file: \(error)")
        }
        return nil
    }
    
}
