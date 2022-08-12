//
//  LogInViewController.swift
//  CoffeeApp
//
//  Created by Fady on 12/08/2022.
//

import UIKit

class LogInViewController: UIViewController {
    //This is just for styling purposes
    @IBOutlet weak var logInOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInOutlet.clipsToBounds=true
        logInOutlet.layer.cornerRadius=logInOutlet.frame.height/2
        // Do any additional setup after loading the view.
    }
    //These are used to get user data
    @IBOutlet weak var logEmailField: UITextField!

    @IBOutlet weak var logPassField: UITextField!
    
    @IBAction func logInButton(_ sender: Any) {
        print("You pressed Sign in")
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
