//
//  Articles.swift
//  News Show (MVVM Demo)
//
//  Created by Youssef Eldeeb on 22/05/2023.
//

import Foundation


struct MainArticle: Decodable{
    let articles: [Article]
}

struct Article: Decodable{
    let title: String
    let description: String
}
