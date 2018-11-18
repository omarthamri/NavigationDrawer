//
//  MenuTableViewCell.swift
//  NavigationDrawerDemo
//
//  Created by MACBOOK PRO RETINA on 18/11/2018.
//  Copyright © 2018 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var MenuItemLbl: UILabel!
    
    @IBOutlet weak var MenuItemImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
