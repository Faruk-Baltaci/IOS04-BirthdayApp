//
//  ViewController.swift
//  birthday
//
//  Created by Faruk Eymen Baltaci on 11.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var birthdayTextfield: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String {
            nameLabel.text = "Name: \(newName)"
        }
        
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
        
    }
    
    @IBAction func saveClicked(_ sender: Any) {
        UserDefaults.standard.set(nameTextfield.text, forKey: "name")
        UserDefaults.standard.set(birthdayTextfield.text, forKey: "birthday")
        
        
        nameLabel.text = "Name: \(nameTextfield.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextfield.text!)"
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday: "
        }
        
    }
}

