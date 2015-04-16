//
//  ViewController.swift
//  testing
//
//  Created by Anil on 16/04/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        let status = NSUserDefaults().stringForKey("playerStatus")
        if status == "Off"{
            if (backgroundMusicPlayer?.playing != nil){
                backgroundMusicPlayer?.stop()
            }
        }else{
            songs = "1.mp3"
            playBackgroundMusic(songs)
        }
    }
}

