//
//  ViewController.swift
//  Mp3Player
//
//  Created by My Macbook on 08/11/18.
//  Copyright © 2018 IOSYS. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBAction func play(_ sender: AnyObject)
    {
        player.play()
    }
    @IBAction func Pause(_ sender: AnyObject) {
    player.pause()
    }
    @IBAction func Reset(_ sender: AnyObject) {
        player.currentTime = 0
        
    }
    var player:AVAudioPlayer = AVAudioPlayer()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do
        {
            let audiopath = Bundle.main.path(forResource: "jaah", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audiopath!) as URL)
        }
        catch
        {
            //error
        }
            // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

