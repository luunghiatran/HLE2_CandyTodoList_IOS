//
//  MenuCell.swift
//  CandyTodoList
//
//  Created by NghiaTL on 5/31/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {

    @IBOutlet weak var titleLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setData(data: String) {
        titleLable.text = data
    }
}
