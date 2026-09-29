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
        // Do any additional setup after loading the view.
    }

    @IBAction func createAccount(_ sender: Any) {
    }
    
}

