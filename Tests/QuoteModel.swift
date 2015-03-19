//  QuoteModel.swift
//  Tests
//
//  Created by Tom Malary on 3/18/15.
//  Copyright (c) 2015 YOUTIR LLC. All rights reserved.

import Foundation

class Quote {
    var carrierNameModel: String?   // Name of the carrier
    var transitRateModel: Int?      // Transit rate, $
    var transitTimeModel: Int?      // Transit time (duration), days
    var logoImage: String           // Path to the image
    
    init(carrierNameModel: String, transitRateModel: Int, transitTimeModel: Int, logoImage: String) {
        
        self.carrierNameModel = carrierNameModel
        self.transitRateModel = transitRateModel
        self.transitTimeModel = transitTimeModel
        self.logoImage = logoImage
        
    }
}