//
//  LogInViewController.swift
//  CoffeeApp
//
//  Created by Fady on 12/08/2022.
//

import UIKit
import CoreData

class LogInViewController: UIViewController {
    //This is just for styling purposes
    @IBOutlet weak var logInOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInOutlet.clipsToBounds=true
        logInOutlet.layer.cornerRadius=logInOutlet.frame.height/2
        print("testing")
        // Do any additional setup after loading the view.
    }
    //These are used to get user data
    @IBOutlet weak var logEmailField: UITextField!

    @IBOutlet weak var logPassField: UITextField!
    
    public func getUserID()
    {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do
        {
            let predict = NSPredicate(format: "username = %@", "Test")
            let req: NSFetchRequest<User> = User.fetchRequest()
            req.predicate = predict
            let users = try context.fetch(req)
            for user in users
            {
                print(user.id)
            }
        } catch
        {
            print("An error has occured")
        }
    }
    
    public func getAllPasswords()
    {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do
        {
            let users = try context.fetch(User.fetchRequest())
            for user in users
            {
                print((user as AnyObject).password!)
            }
        } catch
        {
            print("An error has occured")
        }
    }
    
    public func getUserPassword()
    {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do
        {
            let predict = NSPredicate(format: "username = %@", "Test")
            let req: NSFetchRequest<User> = User.fetchRequest()
            req.predicate = predict
            let users = try context.fetch(req)
            for user in users
            {
                print(user.password!)
            }
        } catch
        {
            print("An error has occured")
        }
    }
    
    func signIn()
    {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do
        {
            let users = try context.fetch(User.fetchRequest())
            for user in users
            {
                if((user as AnyObject).password == logPassField.text && (user as AnyObject).email == logEmailField.text)
                {
                    //go next view
                }
                else
                {
                    print("Login in error")
                }
            }
        } catch
        {
            print("An error has occured")
        }
    }
    
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
