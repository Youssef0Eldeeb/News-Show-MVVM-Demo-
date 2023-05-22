//
//  ArticaleViewModel.swift
//  News Show (MVVM Demo)
//
//  Created by Youssef Eldeeb on 22/05/2023.
//

import Foundation

struct ArticleListViewModel{
    let articles: [Article]
    
    var numberOfSection: Int{
        return 1
    }
    func numberOfRowInSection(_ section: Int) -> Int{
        return articles.count
    }
    func articleInIndex(_ index: Int) -> ArticleViewModel{
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}


struct ArticleViewModel{
    private let article: Article
}
extension ArticleViewModel{
    init(_ article: Article) {
        self.article = article
    }

    var title: String {
        return self.article.title
    }
    var description: String{
        return self.article.description
    }
}
