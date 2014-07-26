//
//  InputViewController.swift
//  quickshot
//
//  Created by InoueAyaka on 2014/07/26.
//  Copyright (c) 2014年 Ayaka Inoue. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {
    
    
    let digit :Int = 7
    var randomNumber : Int = 0
    var inputNumber :Int = 0
    @IBOutlet var label :UILabel!
    @IBOutlet var inputLabel :UILabel!
    @IBOutlet var alartLabel :UILabel!
    
    
    
    var inputArray : [Int] = [0,0,0,0,0,0,0]
    var randomArray : [Int] = [0,0,0,0,0,0,0]
    
    var a = 0
    
    var arrayCount :Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()


        //答えの生成
        for i in 0...(digit-1){
            
            randomArray[i] = (Int(arc4random()) % 8 )+1
            
            NSLog ("%i", randomArray[i])
            
            randomNumber = randomNumber*10 + randomArray[i]
            label.text = randomNumber.description

        }
        

    }
    

    @IBAction func tapNum(sender:UIButton){

        if sender.tag == randomArray[arrayCount] {
            
            inputNumber = inputNumber*10 + sender.tag
            inputLabel.text = inputNumber.description
    
            arrayCount++
            NSLog ("%i", arrayCount)
            
            if arrayCount == 7{
                self.go()
            }
            
       
            
        }else{
            
           alartLabel.text = "wrong"
            
        }
        
        
        
    }
    
    func go(){
        
        alartLabel.text = "correct"
//        let viewController = BangViewController()
        //self.presentationController(viewController)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewControllerWithIdentifier("BangViewController") as UIViewController
        self.presentViewController(viewController, animated: true, completion: nil)
        
    }
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
