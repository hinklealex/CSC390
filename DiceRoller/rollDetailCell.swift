//
//  rollDetailCell.swift
//  DiceRoller
//
//  Created by Alex Hinkle on 11/13/15.
//  Copyright © 2015 Alex Hinkle. All rights reserved.
//


import UIKit

class rollDetailCell: UITableViewCell {
    @IBOutlet weak var rollTotalLabel: UILabel!
    
    @IBOutlet weak var rollDetailsTV: UITableView!
    var rtvc : RollsTVC!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}