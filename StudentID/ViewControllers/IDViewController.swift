//
//  IDViewController.swift
//  StudentID
//
//  Created by Samuel Kiernan on 14/11/2019.
//  Copyright © 2019 Samuel Kiernan. All rights reserved.
//

import UIKit

class IDViewController: UIViewController {
    
    
    @IBOutlet weak var realTime: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        getCurrentDateTime()
        // Do any additional setup after loading the view.
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
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
