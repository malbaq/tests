//  QuoteTableViewCell.swift
//  Tests
//
//  Created by Tom Malary on 3/18/15.
//  Copyright (c) 2015 YOUTIR LLC. All rights reserved.

import UIKit

class QuoteTableViewCell: UITableViewCell {
    
    @IBOutlet var carrierName: UILabel!
    @IBOutlet var transitRate: UILabel!
    @IBOutlet var transitTime: UILabel!
    @IBOutlet var logoImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(carrierNameLabelText: String, transitRateLabelInt: Int, transitTimeLabelInt: Int, logoImagePath: String){
        self.carrierName.text = carrierNameLabelText
        self.transitRate.text = String(transitRateLabelInt)
        self.transitTime.text = String(transitTimeLabelInt)
        self.logoImage.image = UIImage(named: logoImagePath)
    }
}
