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
        
        stopWatchLabel.text = "00:00.00"
        lapsTableView.delegate = self
        lapsTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /***** UI Actions *****/
    @IBAction func startStop(sender: AnyObject) {
        if startStopWatch == true {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("updateStopWatch"), userInfo: nil, repeats: true)
            startStopWatch = false
            startStopButton.setImage(UIImage(named: "stop.png"), forState: UIControlState.Normal)
            lapResetButton.setImage(UIImage(named: "lap.png"), forState: UIControlState.Normal)
            addLap = true
        }
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
        fractions += 1
        if fractions == 100 {
            seconds += 1
            fractions = 0
        }
        if seconds == 60 {
            minutes += 1
            seconds = 0
        }
        let fractionString = fractions > 9 ? "\(fractions)" : "0\(fractions)"
        let secondsString = seconds > 9 ? "\(seconds)" : "0\(seconds)"
        let minutesString = minutes > 9 ? "\(minutes)" : "0\(minutes)"
        
        stopWatchString = "\(minutesString):\(secondsString).\(fractionString)"
        stopWatchLabel.text = stopWatchString
    }
    
    
}

