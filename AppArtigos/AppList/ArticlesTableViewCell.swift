//
//  ArticlesTableViewCell.swift
//  AppList
//
//  Created by Sábado on 11/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit

class ArticlesTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageArticle: UIImageView!
    
    
    func setupCell(viewModel: ArticlesViewModel) {
        
        self.titleLabel.text = viewModel.title
        self.imageArticle.image = viewModel.loadImage
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
