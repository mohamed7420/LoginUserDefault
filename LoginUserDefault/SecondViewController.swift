//
//  SecondViewController.swift
//  LoginUserDefault
//
//  Created by Mohamed on 9/15/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(btn_Logout)
    }
    

    let btn_Logout:UIButton = {
        
       var logout = UIButton(type: .system)
        
        logout.frame = CGRect(x: 100, y: 450, width: 220, height: 40)
        logout.setTitle("Logout", for: .normal)
        logout.backgroundColor = UIColor.black
        logout.addTarget(self, action: #selector(handleLogout), for: .touchUpInside)
        return logout
    }()
    
    @objc func handleLogout(){
        
        
        navigationController?.popViewController(animated: false)
        UserDefaults.standard.set(false, forKey: "Login")
        
    }
    

}
