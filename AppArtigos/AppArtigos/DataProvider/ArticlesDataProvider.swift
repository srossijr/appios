//
//  ArticlesDataProvider.swift
//  AppArtigos
//
//  Created by Sábado on 28/01/17.
//  Copyright © 2017 impacta. All rights reserved.
//

import Foundation

protocol ArticlesDataProviderProtocol: BaseProtocol {
    
}

class ArticlesDataProvider {
    
    func getAllArticles(){
        ArticlesAPIStore().getAllArticles(userID: "0e8c08a1b7de446fa72745b5a0c7ae8b", { (account, error) in
          print(account)
          print(error)
            
            })
    }
}
