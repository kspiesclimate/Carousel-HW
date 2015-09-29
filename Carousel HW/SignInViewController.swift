//
//  SignInViewController.swift
//  Carousel HW
//
//  Created by Katie Spies on 9/22/15.
//  Copyright (c) 2015 Katie Spies. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var disabledButtonOutlet: UIButton!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var formFieldsImage: UIImageView!
    @IBOutlet weak var ForgotPasswordButton: UIButton!
    @IBOutlet weak var SignInButtonImage: UIImageView!
    @IBOutlet weak var SignInButtonOutlet: UIButton!
    @IBOutlet weak var viewMoveOutlet: UIView!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var loadingLabel: UILabel!
    
    @IBAction func forgotPasswordAction(sender: AnyObject) {
        self.performSegueWithIdentifier("secondSegue", sender: self)
    }
    
    var initiaLy: CGFloat!
    let offset: CGFloat = +170
    
    @IBAction func dismissAction(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
   
    @IBAction func SignInButtonAction(sender: AnyObject) {
        self.loadingLabel.hidden = true
        self.errorLabel.hidden = true
        
        //if no email, show email alert
        if EmailTextField.text == ""
        {
            
            var emailalertView = UIAlertView(title: "Email Required", message: "Please enter your email.", delegate: self, cancelButtonTitle: "OK")
            emailalertView.show()
            
        }
        
    //if no password, show password alert
         else if PasswordTextField.text == ""
            {
            var passwordalertView = UIAlertView(title: "Password Required", message: "Please enter your password.", delegate: self, cancelButtonTitle: "OK")
            passwordalertView.show()
        }
        
        //else display a loading alert for 2 seconds. After the 2 seconds are up, you should either display an error if incorrect em/pw or go to the tutorial pages
        else if (EmailTextField.text == "katie@climate.com") && (PasswordTextField.text == "1")  {
            self.errorLabel.hidden = true
            self.loadingLabel.hidden = false
            
            self.delay(2) {
                self.loadingLabel.hidden = true
                
                println("email and password were right!!!")
                //transition to tutorial pages
            
            self.performSegueWithIdentifier("firstSegue", sender: self)
            }
            
        }
        else {
            self.loadingLabel.hidden = false
            self.delay(2) {
                self.loadingLabel.hidden = true
                self.errorLabel.hidden = false
            }
           
        }
        
        
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        disabledButtonOutlet.enabled = false
        errorLabel.hidden = true
        loadingLabel.hidden = true
        initiaLy = viewMoveOutlet.frame.origin.y
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
    }
    
    
    //registering for keyboard events
    
    func keyboardWillHide(notification: NSNotification!) {
        println("keyboard hidden")
         self.viewMoveOutlet.frame.origin.y = initiaLy
             }
    
    func keyboardWillShow(notification: NSNotification!) {
        println("keyboard shown")
        self.viewMoveOutlet.frame.origin.y = initiaLy-offset
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
