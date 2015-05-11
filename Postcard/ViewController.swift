//
//  ViewController.swift
//  Postcard
//
//  Created by Niko on 3/11/15.
//  Copyright (c) 2015 Niko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton){
        //evaluates button
        //hide labels
        messageLabel.hidden = false
        nameLabel.hidden = false
        
        //name label text
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        //message label text
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        
        //hides keyboard
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        
        
        
        //changes the button to send mail to mail sent
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }
    
    

}

