//
//  HeaderTableViewCell.swift
//  NavigationDrawerDemo
//
//  Created by MACBOOK PRO RETINA on 17/11/2018.
//  Copyright © 2018 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var ProfileImg: UIImageView!
    @IBOutlet weak var NameLbl: UILabel!
    @IBOutlet weak var MailLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
