//
//  Articles+ArticlesDataProviderProtocol.swift
//  AppList
//
//  Created by Noturno on 06/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation

extension ArticlesViewController: ArticlesDataProviderProtocol {
    
    func success<T>(vm: T) {
        LoadingView.isLoading(view: self.view, show: false)
        guard let currentVM = vm as? ArticlesViewModel else {return}
        self.viewModel = currentVM
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.reloadData()
    }
    
    func fail(error: NSError) {
        
        
    }
}
