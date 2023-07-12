//
//  BenifiaryListTableViewCell.swift
//  VisionerAssestment
//
//  Created by usama farooq on 12/07/2023.
//

import UIKit

class BenifiaryListTableViewCell: UITableViewCell {
    @IBOutlet weak var fName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var bType: UILabel!
    @IBOutlet weak var designation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
print("sss")
        // Configure the view for the selected state
    }
    func config(with model: BeneficiaryModel){
        fName.text = model.firstName
        lastName.text = model.lastName
        bType.text = model.beneType
        designation.text = BenificiaryDesignation(rawValue: model.designationCode)?.getValue() ?? ""
        
    }
    
}
