//
//  TableViewCell.swift
//  CustomTableViewProject
//
//  Created by Catherine Kelleher on 11/23/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var awesomeLabel: UILabel!
    
    @IBOutlet weak var awesomeButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
