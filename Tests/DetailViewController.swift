//
//  DetailViewController.swift
//  Tests
//
//  Created by Tom Malary on 3/19/15.
//  Copyright (c) 2015 YOUTIR LLC. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var carrierName: UILabel!
    
    @IBOutlet var transitRate: UILabel!
    
    @IBOutlet var transitTime: UILabel!
    
    @IBOutlet var contactsOfCarrier: UILabel!

    @IBOutlet var logoImage: UIImageView!
    
    // Vars to send the data to be displayed with @IBOutlets above
    
    var carrierNameString: String?
    var transitRateInt: Int?
    var transitTimeInt: Int?
    var logoImagePath: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.carrierName.text = carrierNameString
        self.transitRate.text = String(transitRateInt!)
        self.transitTime.text = String(transitTimeInt!)
        self.logoImage.image = UIImage(named: logoImagePath!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
