//
//  introScrollViewController.swift
//  Carousel HW
//
//  Created by Katie Spies on 9/22/15.
//  Copyright (c) 2015 Katie Spies. All rights reserved.
//

import UIKit

class introScrollViewController: UIViewController {

    @IBOutlet weak var tile6View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = imageView.image!.size
        
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


