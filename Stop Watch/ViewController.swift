//
//  ViewController.swift
//  Stop Watch
//
//  Created by Chris Archibald on 12/7/15.
//  Copyright © 2015 Chris Archibald. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var laps: [String] = []
    var timer = NSTimer()
    var minutes: Int = 0
    var seconds: Int = 0
    var fractions: Int = 0
    
    var stopWatchString: String = ""
    
    var startStopWatch: Bool = true
    var addLap: Bool = false
    
    
    @IBOutlet weak var stopWatchLabel: UILabel!
    @IBOutlet weak var lapsTableView: UITableView!
    @IBOutlet weak var startStopButton: UIButton!
    @IBOutlet weak var lapResetButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /***** UI Actions *****/
    @IBAction func startStop(sender: AnyObject) {
    }

    @IBAction func lapReset(sender: AnyObject) {
    }
    
    /***** Table View Functions *****/
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "Cell")
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return laps.count
    }
    
    /***** Helper Functions *****/
    func updateStopWatch() {
        
    }
    
    
}

