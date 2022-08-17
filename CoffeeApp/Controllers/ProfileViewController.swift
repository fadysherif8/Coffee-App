//
//  ProfileViewController.swift
//  CoffeeApp
//
//  Created by Fady on 12/08/2022.
//

import UIKit
import CoreData

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileView: UIImageView!
    @IBOutlet weak var emailField: UILabel!
    @IBOutlet weak var nameField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //styling profile pic
        profileView.clipsToBounds=true
        profileView.layer.cornerRadius=profileView.frame.height/2
        
        //styling logout button
        logOutOutlet.clipsToBounds=true
        logOutOutlet.layer.cornerRadius=logOutOutlet.frame.height/2
    }
    override func viewDidAppear(_ animated: Bool) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        var allUsers = [User]()
        do{
            allUsers = try context.fetch(User.fetchRequest())
            if allUsers.count>0{
                self.emailField.text=allUsers[allUsers.count-1].email
                self.nameField.text=allUsers[allUsers.count-1].username
                welcomeOutlet.text!="Hi \(allUsers[allUsers.count-1].username) !"
            }
        }catch{}
    }
    //Field to print user first name
    @IBOutlet weak var welcomeOutlet: UILabel!
    @IBOutlet weak var logOutOutlet: UIButton!
    
    @IBAction func logOutButton(_ sender: Any) {
        CartViewController.clearTable()
        self.performSegue(withIdentifier: "toLogInScreen", sender: self)
        
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
