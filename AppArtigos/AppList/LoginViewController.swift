//
//  LoginViewController.swift
//  AppList
//
//  Created by Noturno on 13/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordButton: UIButton!
    
    func checkValues() -> Bool {

        var  check = true
        if (self.emailTextField.text?.isEmpty)! || (self.passwordTextField.text?.isEmpty)! {
            
            check = false
        }
        return check
    }
    
    @IBAction func tappedLogin(_ sender: UIButton) {
        
        if checkValues() {
            self.loginDataprovider.login(email: self.emailTextField.text!, password: self.passwordTextField.text!)
        }
    }
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    var loginDataprovider = LoginDataProvider()
    func setupPasswordButton() {
        
        self.passwordButton.layer.borderWidth = 2.0
        self.passwordButton.layer.borderColor = UIColor.white.cgColor
        self.passwordButton.layer.cornerRadius = 8.0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupPasswordButton()
        self.loginDataprovider.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
