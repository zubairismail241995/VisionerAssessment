//
//  Enum.swift
//  VisionerAssestment
//
//  Created by usama farooq on 12/07/2023.
//

import Foundation
enum BenificiaryDesignation: String{
    case P = "P"
    case C = "C"
    
    func getValue() -> String {
        switch self {
        case .P:
            return "Primary"
        case .C:
            return "Contingent"
        }
    }
}
