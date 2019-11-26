//
//  IDViewController.swift
//  StudentID
//
//  Created by Samuel Kiernan on 14/11/2019.
//  Copyright © 2019 Samuel Kiernan. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import Firebase

class IDViewController: UIViewController {
    
    let db = Firestore.firestore()
    
    @IBOutlet weak var realTime: UILabel!
    
    @IBOutlet weak var studentNum: UILabel!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var yearOfStudy: UILabel!
    
    @IBOutlet weak var degreeType: UILabel!
    
    @IBOutlet weak var course: UILabel!
    
    @IBOutlet weak var status: UILabel!
    
    @IBOutlet weak var expiry: UILabel!
    
    @IBOutlet weak var dob: UILabel!
    

    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

            
        //when form loads this function is exacuted which is getting the date and time
        getCurrentDateTime()
        
        //when form loads this function is exacuted which is getting the student data
        getStudentData()
        
        
        
        
    }
    
    //creating a fuction whereby when the user opens their ID the current datetime is displayed for authenticity purposes
    //code derived from https://www.youtube.com/watch?v=9jtX0xEuQqs
    func getCurrentDateTime(){
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        let str = formatter.string(from: Date())
        realTime.text = str
    }
    
    
    
   func getStudentData() {
        
    //https://firebase.google.com/docs/firestore/query-data/get-data
    
  
    let docRef = db.collection("students").document("student-1")

    
            //student number
             docRef.getDocument { (document, error) in
                 if let document = document, document.exists {
                     let dataDescription = document.get("studentNumber").map(String.init(describing:)) ?? "nil"
                    self.studentNum.text = dataDescription
                 } else {
                     print("Document does not exist")
                 }
             }
    
            //name
            docRef.getDocument { (document, error) in
                   if let document = document, document.exists {
                       let dataDescription = document.get("name").map(String.init(describing:)) ?? "nil"
                      self.name.text = dataDescription
                   } else {
                       print("Document does not exist")
                   }
               }
    
            //year of study
            docRef.getDocument { (document, error) in
                   if let document = document, document.exists {
                       let dataDescription = document.get("YearOfStudy").map(String.init(describing:)) ?? "nil"
                      self.yearOfStudy.text = dataDescription
                   } else {
                       print("Document does not exist")
                   }
               }
    
            //degree type
            docRef.getDocument { (document, error) in
                   if let document = document, document.exists {
                       let dataDescription = document.get("DegreeType").map(String.init(describing:)) ?? "nil"
                      self.degreeType.text = dataDescription
                   } else {
                       print("Document does not exist")
                   }
               }
    
    
            //course
            docRef.getDocument { (document, error) in
                   if let document = document, document.exists {
                       let dataDescription = document.get("Course").map(String.init(describing:)) ?? "nil"
                      self.course.text = dataDescription
                   } else {
                       print("Document does not exist")
                   }
               }
    
    
            //status
            docRef.getDocument { (document, error) in
                   if let document = document, document.exists {
                       let dataDescription = document.get("status").map(String.init(describing:)) ?? "nil"
                      self.status.text = dataDescription
                   } else {
                       print("Document does not exist")
                   }
               }
            
            
            //expiry
            docRef.getDocument { (document, error) in
                   if let document = document, document.exists {
                       let dataDescription = document.get("Expiry").map(String.init(describing:)) ?? "nil"
                      self.expiry.text = dataDescription
                   } else {
                       print("Document does not exist")
                   }
               }
    
    
            //date of birth
            docRef.getDocument { (document, error) in
                   if let document = document, document.exists {
                       let dataDescription = document.get("DOB").map(String.init(describing:)) ?? "nil"
                      self.dob.text = dataDescription
                   } else {
                       print("Document does not exist")
                   }
               }

    }
    
}
