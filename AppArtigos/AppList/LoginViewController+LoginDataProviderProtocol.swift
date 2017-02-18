//
//  LoginViewController+LoginDataProviderProtocol.swift
//  AppList
//
//  Created by Noturno on 14/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation

extension LoginViewController: LoginDataProviderProtocol {
    
    func success<T>(vm: T) {
        self.performSegue(withIdentifier: "Login", sender: nil)
    }
    
    func fail(error: NSError) {
        
        print(error)
    }
}
