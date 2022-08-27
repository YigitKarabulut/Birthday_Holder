//
//  ViewController.swift
//  birthday_day_app
//
//  Created by Yigit on 27.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    

    @IBOutlet weak var txtBirthday: UITextField!
    
    
    @IBOutlet weak var lblBirthday: UILabel!
    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let myName = storedName as? String {
            lblName.text = "Name: \(myName)"
        }
        if let myBirthday = storedBirthday as? String{
            lblBirthday.text = "Birthday: \(myBirthday)"
        }
        
        
    }

    @IBAction func deleteBtnClick(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            lblName.text = "Name:"
        }
        
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday" )
            lblBirthday.text = "Birthday:"
        }
    }
    @IBAction func saveBtnClick(_ sender: Any) {
        
        UserDefaults.standard.set(txtName.text!, forKey: "name")
        UserDefaults.standard.set(txtBirthday.text!, forKey: "birthday")
        
        
        
        
        lblName.text = "Name: \(txtName.text!)"
        lblBirthday.text = "Birthday: \(txtBirthday.text!)"
        
        
         
        
    }
    
}

