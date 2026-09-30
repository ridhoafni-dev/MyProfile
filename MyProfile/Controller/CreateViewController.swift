//
//  CreateViewController.swift
//  MyProfile
//
//  Created by User on 26/09/26.
//

import UIKit

class CreateViewController: UIViewController {
    
    @IBOutlet weak var createButton: RoundButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var professionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createButton.pinkColor()
    }

    @IBAction func createAccount(_ sender: Any) {
        if let name = nameTextField.text, let email = emailTextField.text, let profession = professionTextField.text {
            
            if name.isEmpty {
                textEmpty("Name")
            } else if email.isEmpty {
                textEmpty("Email")
            } else if profession.isEmpty {
                textEmpty("Profession")
            } else {
                saveProfile(name, email, profession)
                
                self.performSegue(withIdentifier: "moveToHome", sender: self)
            }
            
        }

    }
    
    func saveProfile(_ name: String, _ email: String, _ profession: String) {
        ProfileModel.name = name
        ProfileModel.email = email
        ProfileModel.profession = profession
        ProfileModel.stateLogin = true
    }
    
    func textEmpty(_ field: String) {
        let alert = UIAlertController(title: "Alert", message: "\(field) cannot be empty.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}

