//
//  ViewController.swift
//  LoginUserDefault
//
//  Created by Mohamed on 9/13/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 1, green: 0.8580974675, blue: 0.2895807922, alpha: 1)
        navigationItem.title = "Login UserDefault"
        navigationController?.navigationBar.prefersLargeTitles = true
     
        
        view.addSubview(textFLName)
        view.addSubview(textFLPass)
        view.addSubview(loginButton)
        
        if UserDefaults.standard.bool(forKey: "Login") == true {
            
              navigationController?.pushViewController(SecondViewController(), animated: false)
        }
        
    }
    
    let textFLName:UITextField = {
        
       
        let userName = UITextField(frame: CGRect(x: 70, y: 300, width: 300, height: 30))
        userName.backgroundColor = .white
        return userName
        
    }()
    let textFLPass:UITextField = {
        
        
        let userPass = UITextField(frame: CGRect(x: 70, y: 370, width: 300, height: 30))
        userPass.backgroundColor = .white
        return userPass
        
    }()
    
    let loginButton:UIButton = {
       
        let login_btn = UIButton(type:.system)
        login_btn.frame = CGRect(x: 100, y: 450, width: 220, height: 30)
        login_btn.setTitle("Login", for: .normal)
        login_btn.backgroundColor = UIColor.black
        login_btn.addTarget(self, action: #selector(handleLoginButton), for: .touchUpInside)
        return login_btn
    }()
    
    @objc func handleLoginButton(){
        
        print("Login turnOn")
        
        if textFLName.text == "test" && textFLPass.text == "test"{
            
            UserDefaults.standard.set(true, forKey: "Login")
            
            navigationController?.pushViewController(SecondViewController(), animated: true)
            
        }
        
    }


}

