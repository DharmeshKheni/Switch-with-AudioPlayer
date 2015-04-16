//
//  settingsView.swift
//  testing
//
//  Created by Anil on 16/04/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class settingsView: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBAction func switchPressed(sender: AnyObject) {
        
        if mySwitch.on {
            
            NSUserDefaults().setObject("on", forKey: "playerStatus")
            playBackgroundMusic(songs)
            
        } else {
            NSUserDefaults().setObject("Off", forKey: "playerStatus")
            backgroundMusicPlayer!.stop()
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let status = NSUserDefaults().stringForKey("playerStatus")
        if status == "Off" {
            mySwitch.setOn(false, animated: false)
        }
    }
}
