//
//  ForgotPasswordViewController.swift
//  Carousel HW
//
//  Created by Katie Spies on 9/25/15.
//  Copyright (c) 2015 Katie Spies. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
   
    @IBOutlet weak var forgotPasswordView: UIView!

    @IBAction func dismissAction(sender: AnyObject) {
            dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    @IBAction func sendButton(sender: AnyObject) {
    }
    
    @IBOutlet weak var sendButtonImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

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
