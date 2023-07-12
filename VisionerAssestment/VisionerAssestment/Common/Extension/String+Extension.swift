//
//  String+Extension.swift
//  VisionerAssestment
//
//  Created by usama farooq on 12/07/2023.
//

import Foundation
extension String {
    func convertDateFormat(from inputFormat: String, to outputFormat: String) -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = inputFormat
        
        if let date = dateFormatter.date(from: self) {
            let outputFormatter = DateFormatter()
            outputFormatter.dateFormat = outputFormat
            
            return outputFormatter.string(from: date)
        } else {
            return nil
        }
    }
}
