//
//  ViewController.swift
//  Login
//
//  Created by Jacob Davis on 9/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var userNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            print("Preparing to set title to \"Forgot Password")
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            print("Preparing to set title to \"Forgot Username")
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            print("Preparing to set title to username")
            segue.destination.navigationItem.title = userNameTextField.text
        }
    }
    
    @IBAction func forgotUsernameButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPasswordButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
}

