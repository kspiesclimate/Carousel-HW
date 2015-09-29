//
//  testanimationViewController.swift
//  Carousel HW
//
//  Created by Katie Spies on 9/25/15.
//  Copyright (c) 2015 Katie Spies. All rights reserved.
//

import UIKit

class testanimationViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var fish: UIImageView!
    @IBOutlet weak var firstView: UIImageView!
    @IBOutlet weak var secondView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.firstView.alpha = 0
        self.secondView.alpha = 1
        
        
        UIView.animateWithDuration(4, animations: {
            // This causes first view to fade in and second view to fade out
            self.firstView.alpha = 1
            self.secondView.alpha = 0
        })
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
