//
//  ProductItemViewController.swift
//  CoffeeApp
//
//  Created by Fady on 13/08/2022.
//

import UIKit

class ProductItemViewController: UIViewController {
    
    @IBOutlet weak var addCartOutlet: UIButton!
    @IBOutlet weak var priceField: UILabel!
    @IBOutlet weak var minusOutlet: UIButton!
    @IBOutlet weak var plusOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        
    }
    func setUpUI(){
        //This function is used to make rounded corners in different ui components
        addCartOutlet.clipsToBounds=true
        addCartOutlet.layer.cornerRadius=addCartOutlet.frame.height/2
        
//        plusOutlet.clipsToBounds=true
//        plusOutlet.layer.cornerRadius = plusOutlet.frame.height/2
//        plusOutlet.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
//
//        minusOutlet.clipsToBounds=true
//        minusOutlet.layer.cornerRadius = minusOutlet.frame.height/2
//        minusOutlet.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
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
