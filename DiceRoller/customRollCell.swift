//
//  customRollCell.swift
//  DiceRoller
//
//  Created by Alex Hinkle on 11/30/15.
//  Copyright © 2015 Alex Hinkle. All rights reserved.
//

import UIKit

class customRollCell: UITableViewCell
{
    @IBOutlet weak var qtyLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var sidesLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}