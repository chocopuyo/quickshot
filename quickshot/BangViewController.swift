//
//  BangViewController.swift
//  quickshot
//
//  Created by InoueAyaka on 2014/07/26.
//  Copyright (c) 2014年 Ayaka Inoue. All rights reserved.
//

import UIKit
import AudioToolbox

class BangViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gun(){
        var soundID:SystemSoundID = 0;
        var soundURL = NSBundle.mainBundle().URLForResource("gun", withExtension: "aif")
        AudioServicesCreateSystemSoundID(soundURL, &soundID)
        AudioServicesPlaySystemSound (soundID);
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
