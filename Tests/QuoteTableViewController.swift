//
//  QuoteTableViewController.swift
//  Tests
//
//  Created by Tom Malary on 3/18/15.
//  Copyright (c) 2015 YOUTIR LLC. All rights reserved.
//

import UIKit

class QuoteTableViewController: UITableViewController {

    @IBOutlet var quoteTableView: UITableView!
    
    var arrayOfQuotes: [Quote] = [Quote]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.setUpQuotes()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return arrayOfQuotes.count
    }
    
    func setUpQuotes(){
        // Instead of defining here the qoutes I'm gonna get them from the parse
        var quote1 = Quote(carrierNameModel: "Delline", transitRateModel: 1200, transitTimeModel: 7, logoImage: "img1.png")
        var quote2 = Quote(carrierNameModel: "DHL", transitRateModel: 1300, transitTimeModel: 5, logoImage: "img2.gif")
        var quote3 = Quote(carrierNameModel: "PFX", transitRateModel: 1350, transitTimeModel: 6, logoImage: "img3.png")
        var quote4 = Quote(carrierNameModel: "UPS", transitRateModel: 1700, transitTimeModel: 5, logoImage: "img2.gif")
        
        arrayOfQuotes.append(quote1)
        arrayOfQuotes.append(quote2)
        arrayOfQuotes.append(quote3)
        arrayOfQuotes.append(quote4)
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: QuoteTableViewCell = tableView.dequeueReusableCellWithIdentifier("QuoteCell", forIndexPath: indexPath) as QuoteTableViewCell
        
        let quote = arrayOfQuotes[indexPath.row]
        
        cell.setCell(quote.carrierNameModel!, transitRateLabelInt: quote.transitRateModel!, transitTimeLabelInt: quote.transitTimeModel!, logoImagePath: quote.logoImage)
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.greenColor()
        } else {
            cell.backgroundColor = UIColor.redColor()
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let quote = arrayOfQuotes[indexPath.row]
        var detailViewController: DetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as DetailViewController
        
        detailViewController.carrierNameString = quote.carrierNameModel
        detailViewController.transitRateInt = quote.transitRateModel
        detailViewController.transitTimeInt = quote.transitTimeModel
        detailViewController.logoImagePath = quote.logoImage
        
        self.presentViewController(detailViewController, animated: true, completion: nil)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
