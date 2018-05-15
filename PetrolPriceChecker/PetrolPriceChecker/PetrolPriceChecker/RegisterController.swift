//
//  LoginController.swift
//  PetrolPriceChecker
//
//  Created by tn on 4/5/18.
//  Copyright © 2018 tn. All rights reserved.
//

import Foundation

import UIKit

class RegisterController: UIViewController {
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var messageLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func LoginTouch(_ sender: UIButton) {
        let users = [ User(username:"admin", password:"password", userType:UserType.Admin)];
        var authenticated = false;
        var user: User? = nil;
        
        for u in users
        {
            if ((usernameTxt.text == u._username) && (passwordTxt.text == u._password))
            {
                authenticated = true;
                user = u;
                break;
            }
        }
        
        if (authenticated)
        {
            messageLbl.text = "Login successfully";
            UserDefaults.standard.setValue(user?._username, forKey: "username");
            UserDefaults.standard.setValue(String(describing:user?._userType), forKey: "userType");
            UserDefaults.standard.synchronize();
        }
        else
        {
            messageLbl.text = "Login failed";
        }
        

        
        //go to game view
        //let game = self.storyboard?.instantiateViewController(withIdentifier: "GameController") as! GameController;
        //self.present(game, animated: true);
    }

}
