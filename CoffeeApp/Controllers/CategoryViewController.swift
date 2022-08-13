//
//  CategoryViewController.swift
//  CoffeeApp
//
//  Created by Fady on 13/08/2022.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var coffees = ["Espresso","Cappuccino","Macciato","Mocha","Latte"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("I am here")

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "listCell") as! CoffeeTableViewCell
        
        cell.drinkName.text = coffees[indexPath.row]
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
}
