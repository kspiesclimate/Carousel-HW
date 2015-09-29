//
//  TutorialViewController.swift
//  Carousel HW
//
//  Created by Katie Spies on 9/26/15.
//  Copyright (c) 2015 Katie Spies. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {
    
    @IBOutlet weak var welcomeImages: UIView!
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var backUpView: UIView!
    @IBOutlet var imageView: UIView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var backupButtonImage: UIImageView!
    @IBAction func backupButtonAction(sender: AnyObject) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScrollView.contentSize = CGSize(width: 1280, height: 450)
        
        //ScrollView.delegate = self
        
        backUpView.alpha = 0.15
        
        if pageControl.currentPage == 1{
            backUpView.alpha = 0
        }
        else if pageControl.currentPage == 2{
            backUpView.alpha = 0.33
        }
        else if pageControl.currentPage == 3{
            backUpView.alpha = 0.67
        }
        else if pageControl.currentPage == 4{
            backUpView.alpha = 1
        }

        

        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        // This method is called as the user scrolls
        println("I'm scrolling!")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(ScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
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
