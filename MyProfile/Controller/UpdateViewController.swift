//
//  UpdateViewController.swift
//  MyProfile
//
//  Created by User on 26/09/26.
//

import UIKit

class UpdateViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var professionTextField: UITextField!
    @IBOutlet weak var cancelButton: RoundButton!
    @IBOutlet weak var saveButton: RoundButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveButton.pinkColor()
        cancelButton.pinkColor()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ProfileModel.synchronize()
        
        nameTextField.text = ProfileModel.name
        emailTextField.text = ProfileModel.email
        professionTextField.text = ProfileModel.profession

    }
    
    @IBAction func saveAccount(_ sender: Any) {
        if let name = nameTextField.text, let email = emailTextField.text, let profession = professionTextField.text {
        
            if name.isEmpty {
                textEmpty("Name")
            } else if email.isEmpty {
                textEmpty("Email")
            } else if profession.isEmpty {
                textEmpty("Profession")
            } else {
                updateAccount(name, email, profession)
                
                self.dismiss(animated: true)
            }
            
        }

    }

    @IBAction func cancelAccount(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    func updateAccount(_ name: String, _ email: String, _ profession: String) {
        ProfileModel.name = name
        ProfileModel.email = email
        ProfileModel.profession = profession
    }

    
    func textEmpty(_ field: String) {
        let alert = UIAlertController(title: "Alert", message: "\(field) cannot be empty.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
