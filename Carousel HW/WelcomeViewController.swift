//
//  WelcomeViewController.swift
//  Carousel HW
//
//  Created by Katie Spies on 9/25/15.
//  Copyright (c) 2015 Katie Spies. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {


    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
        override func viewDidLoad() {
        super.viewDidLoad()
        
            //self.scrollView.delegate = self
            
            

        scrollView.contentSize = CGSize(width: 1280, height: 568)
        
        
        // Do any additional setup after loading the view.
    }

    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
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
