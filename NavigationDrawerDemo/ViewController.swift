//
//  ViewController.swift
//  NavigationDrawerDemo
//
//  Created by MACBOOK PRO RETINA on 11/11/2018.
//  Copyright © 2018 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var NavigationDrawerIsVisible = false
    
    @IBOutlet weak var NavigationDrawerTblView: UITableView!
    
    @IBOutlet weak var NavigationDrawerTblViewLeadingConstraint: NSLayoutConstraint!
    
    
    @IBOutlet weak var BackgroundView: UIView!
    @IBOutlet weak var DisplayedItemLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetupView()
    }
    
    func SetupView()
    {
        NavigationDrawerTblView.delegate = self
        NavigationDrawerTblView.dataSource = self
        NavigationDrawerTblView.separatorStyle = .none
        NavigationDrawerTblViewLeadingConstraint.constant = -((UIScreen.main.bounds.width * 3) / 4)
        view.backgroundColor = UIColor.white
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        BackgroundView.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        CloseNavigationDrawer()
    }
    
    @IBAction func MenuBtnAction(_ sender: UIButton) {
        if !NavigationDrawerIsVisible {
            NavigationDrawerTblViewLeadingConstraint.constant = 0
           self.view.backgroundColor = UIColor.white.withAlphaComponent(0.5)
            self.BackgroundView.backgroundColor = UIColor.white.withAlphaComponent(0.5)
            NavigationDrawerIsVisible = true
            UIApplication.shared.keyWindow?.windowLevel = UIWindowLevelStatusBar

        }
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        })
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row == 0)
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell", for: indexPath) as! HeaderTableViewCell
            cell.selectionStyle = .none
            cell.ProfileImg.image = UIImage(named: "profilepic")
            cell.ProfileImg.layer.borderWidth = 1
            cell.ProfileImg.layer.masksToBounds = false
            cell.ProfileImg.layer.borderColor = UIColor.black.cgColor
            cell.ProfileImg.layer.cornerRadius = cell.ProfileImg.frame.height/2
            cell.ProfileImg.clipsToBounds = true
            cell.NameLbl.text = "Omar Thamri"
            cell.MailLbl.text = "OmarDeveloper@gmail.com"
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell
        cell.selectionStyle = .none
        cell.MenuItemImg.image = UIImage(named: "camera")
        cell.MenuItemLbl.text = "Item \(indexPath.row)"
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 152
        }
        return 57
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if (indexPath.row == 1)
        {
            DisplayedItemLabel.text = "Item 1"
            CloseNavigationDrawer()
        } else if (indexPath.row == 2)
        {
            DisplayedItemLabel.text = "Item 2"
            CloseNavigationDrawer()
        } else if (indexPath.row == 3)
        {
            DisplayedItemLabel.text = "Item 3"
            CloseNavigationDrawer()
        }
        
    }
    
    func CloseNavigationDrawer()
    {
        if NavigationDrawerIsVisible {
            NavigationDrawerTblViewLeadingConstraint.constant = -((UIScreen.main.bounds.width * 3) / 4)
            view.backgroundColor = UIColor.white
            NavigationDrawerIsVisible = false
            UIApplication.shared.keyWindow?.windowLevel = UIWindowLevelNormal
            
        }
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
    

}

