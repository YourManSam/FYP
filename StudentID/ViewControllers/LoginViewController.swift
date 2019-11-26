//
//  LoginViewController.swift
//  StudentID
//
//  Created by Samuel Kiernan on 14/11/2019.
//  Copyright © 2019 Samuel Kiernan. All rights reserved.
//
//code sourced from https://www.youtube.com/watch?v=1HN7usMROt8

import UIKit
import AVKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    
    //video formatting
    var videoPlayer:AVPlayer?
    var videoPlayerLayer:AVPlayerLayer?
    

    //importing the fields into the code
    @IBOutlet weak var StudentNumber: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var LoginButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpElements()
        
    }
    
    //set up video playing in background
    override func viewWillAppear(_ animated: Bool){
        
        //set up video in background
       // setUpVideo()
        
    }
    
    func setUpElements() {
        
        //hide the error label for the moment
        errorLabel.alpha = 0
        
        //styling the elements
        Utilities.styleTextField(StudentNumber)
        Utilities.styleTextField(Password)
        Utilities.styleFilledButton(LoginButton)
        
        
        
    }
    
    //calling set up video function
    /*func setUpVideo(){
        
        //get the path to resource in the bundle
       let bundlePath = Bundle.main.path(forResource: "UCCpan", ofType: "mp4")
        
        guard bundlePath != nil else {
            return
        }
        
        //create a url from the path
        let url = URL(fileURLWithPath: bundlePath!)
        
        //create video payer item
        let item = AVPlayerItem(url: url)
        
        //create the player
        videoPlayer = AVPlayer(playerItem: item)
        
        
        //create the layer
        videoPlayerLayer = AVPlayerLayer(player: videoPlayer!)
        
        
        //adjust the size and frame
        videoPlayerLayer?.frame = CGRect(x:
            -self.view.frame.size.width*1.5, y: 0, width:
            self.view.frame.size.width*4, height:
            self.view.frame.size.height)
        
        view.layer.insertSublayer(videoPlayerLayer!, at: 0)
        
    
        
        //add it to the view
        videoPlayer?.play()
        
    }*/
    
    //action of the button
    @IBAction func LoginTapped(_ sender: Any) {
        
       //create cleaned text fields
        let email = StudentNumber.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = Password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        
        
        //signing in with student information
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error != nil {
                //couldn't sign in
                
                self.errorLabel.text = error! .localizedDescription
                self.errorLabel.alpha = 1
            
            
        }
            else {
                
                let idViewController = self.storyboard? .instantiateViewController(identifier: Constants.Storyboard.IDViewController) as?
                IDViewController
                
                self.view.window?.rootViewController = idViewController
                self.view.window?.makeKeyAndVisible()
                
                
                
                
            }
        
    }
    

}


}
