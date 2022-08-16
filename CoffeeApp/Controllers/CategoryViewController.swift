//
//  CategoryViewController.swift
//  CoffeeApp
//
//  Created by Fady on 13/08/2022.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    static var currentDrinkName = "Default"
    static var currentDrinkImage: UIImage?
    
    var coffees = [Coffee(title: "Espresso", image: UIImage(named: "espresso2")!), Coffee(title: "Cappuccino", image: UIImage(named: "cappuccino")!), Coffee(title: "Macciato", image: UIImage(named: "latte-macchiato")!), Coffee(title: "Mocha", image: UIImage(named: "mocha (1)")!), Coffee(title: "Latte", image: UIImage(named: "latte")!),]
    
    
  //  var coffees = ["Espresso","Cappuccino","Macciato","Mocha","Latte"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "listCell") as! CoffeeTableViewCell
        
        cell.drinkName.text = coffees[indexPath.row].title
        cell.drinkImage.image = coffees[indexPath.row].image
        
        cell.delegate = self
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
       

//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("section:\(indexPath.section)")
//        print("row: \(indexPath.row)")
//    }
    
}

extension CategoryViewController: CoffeeTableViewCellDelegate {
    func didTapButton(drinkName: String, drinkImage: UIImage) {
        CategoryViewController.currentDrinkName = drinkName
        CategoryViewController.currentDrinkImage = drinkImage
        
    }
}
