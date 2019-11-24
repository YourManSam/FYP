//
//  Utilities.swift
//  StudentID
//
//  Created by Samuel Kiernan on 21/11/2019.
//  Copyright © 2019 Samuel Kiernan. All rights reserved.
//
//code was sourced from https://www.youtube.com/watch?v=1HN7usMROt8

import Foundation
import UIKit

class Utilities {
    
    static func styleTextField(_ textfield:UITextField) {
        
        // create the bottom line
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        
        //background colour of the textbox
        bottomLine.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1).cgColor
        
        // remove border on text field
        textfield.borderStyle = .none
        
        // add the line to the text field
        textfield.layer.addSublayer(bottomLine)
        
    }
    
    static func styleFilledButton(_ button:UIButton) {
        
        // filled rounded corner style
        button.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleHollowButton(_ button:UIButton) {
        
        // hollow rounded corner style
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
    }
    
    static func isPasswordValid(_ password : String) -> Bool {
        
        //form validation
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
}


