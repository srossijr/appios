//
//  HomeViewModel.swift
//  AppList
//
//  Created by Noturno on 26/01/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import UIKit

class ArticlesViewModel: NSObject {
    
    private var account: Account?
    private var articlesArray: [Articles]?
    private var currentArticle: Articles?
    private var currentDetailsArticle: Articles?
    
    
    init(account: Account) {
        self.account = account
        self.articlesArray = account.articles
    }
    
    var loadImage: UIImage? {
        let url = URL(string: (self.currentArticle?.urlToImage)!)
        let data = try! Data(contentsOf:url!)
        return UIImage(data: data)
    }
    
    var loadCountArticles: Int? {
        return self.articlesArray?.count
    }
    
    func setupArticleSelected(indice: Int) {
        self.currentDetailsArticle = self.articlesArray?[indice]
    }
    
    func loadCurrentArticle(indice:  Int) {
        
        self.currentArticle = self.articlesArray?[indice]
    }
    
    var descriptionDetail: String? {
        return self.currentDetailsArticle?.descriptionValue
    }


    var title: String {
        guard let loadTitle = self.currentArticle?.title else{return ""}
        return loadTitle
    }
    
    var urlToImage: String {
        guard let loadurlToImage = self.currentArticle?.urlToImage else{return ""}
        return loadurlToImage
    }

    var descriptionValue: String {
        guard let loadLescriptionValue = self.currentArticle?.descriptionValue else{return ""}
        return loadLescriptionValue
    }

    var publishedAt: String {
        guard let loadPublishedAt = self.currentArticle?.publishedAt else{return ""}
        return loadPublishedAt
    }

    var author: String {
        guard let loadAuthor = self.currentArticle?.author else{return ""}
        return loadAuthor
    }

    var url: String {
        guard let loadUrl = self.currentArticle?.url else{return ""}
        return loadUrl
    }
}
