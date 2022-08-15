//
//  CoffeeTableViewCell.swift
//  CoffeeApp
//
//  Created by Fady on 13/08/2022.
//

import UIKit

class CoffeeTableViewCell: UITableViewCell {

    @IBOutlet weak var drinkName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//    self.performSegue(withIdentifier: "toProductItem", sender: self)

}
