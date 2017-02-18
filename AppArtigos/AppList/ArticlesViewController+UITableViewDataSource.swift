//
//  ArticlesViewController+UITableViewDataSource.swift
//  AppList
//
//  Created by Noturno on 07/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import UIKit

extension ArticlesViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let count = self.viewModel?.loadCountArticles else{return 0}
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ArticlesTableViewCell

        self.viewModel?.loadCurrentArticle(indice: indexPath.row)
        
        cell.setupCell(viewModel: self.viewModel!)
        
        
        return cell
    }
}
