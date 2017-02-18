//
//  ArticlesViewController+UITableViewDelegate.swift
//  AppList
//
//  Created by Noturno on 07/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import UIKit

extension ArticlesViewController: UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.viewModel?.setupArticleSelected(indice: indexPath.row)
        
        self.performSegue(withIdentifier: "details", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! DetailsViewController
        
        vc.viewModel = self.viewModel
        
        print(vc.viewModel?.descriptionDetail)
    }
    
}
