//
//  ViewController.swift
//  StudentID
//
//  Created by Samuel Kiernan on 07/11/2019.
//  Copyright © 2019 Samuel Kiernan. All rights reserved.
//



//all firebae code importing and creating was inspired from:
// https://www.youtube.com/watch?v=P1cNScXGlVI&list=PLMRqhzcHGw1ZsFRLAWa_Axx7daXteynjh




//importing firbase into the project
import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //oppening the connection to firestore
        let db = Firestore.firestore()
        
       //creating student login details incase login page is going to be used
        db.collection("login-detials").document("student-1").setData(["Student Number":116330181, "Password":"mypassword"], merge: true)
        
        
        /* db.collection("card-details").document("card-1").setData(["Card Number":116330181, "FirstName":"Samuel Laurence", "LastName":"Kiernan", "BatchNumber":1234, "DegreeType":"BSc(Hons)", "Course":"BSCI", "DOB":20/07/1997], merge: true) */
        
    }


}

