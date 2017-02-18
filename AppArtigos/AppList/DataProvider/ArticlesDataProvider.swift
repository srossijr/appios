//
//  ArticlesDataProvider.swift
//  AppList
//
//  Created by Noturno on 31/01/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation

protocol ArticlesDataProviderProtocol: BaseProtocol {
    
}

class ArticlesDataProvider  {
    
    var  delegate: ArticlesDataProviderProtocol?
    
    func getAllArticles(){
        
        ArticlesAPIStore().getAllArticles(userID: "0e8c08a1b7de446fa72745b5a0c7ae8b") { (account, error) in
    
            if error != nil {
                self.delegate?.fail(error: error!)
            }else {
                guard let modelAccount = account else{return}
                let vm = ArticlesViewModel(account: modelAccount)
                self.delegate?.success(vm: vm)
            }
        }
        //TO DO implementar o método que vem da camada API
    }
}
