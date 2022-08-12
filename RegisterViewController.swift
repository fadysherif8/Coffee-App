//
//  RegisterViewController.swift
//  CoffeeApp
//
//  Created by Fady on 12/08/2022.
//

import UIKit

class RegisterViewController: UIViewController {
    
    //This is just an outlet to style buttons
    @IBOutlet weak var signUpOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //For styling sign up button
        signUpOutlet.clipsToBounds=true
        signUpOutlet.layer.cornerRadius=signUpOutlet.frame.height/2
    }
    //These are the otlets used to get user data
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var repPasswordField: UITextField!
    
    @IBAction func signUpButton(_ sender: Any) {
        print("You pressed sign up")
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
