//
//  WebService.swift
//  News Show (MVVM Demo)
//
//  Created by Youssef Eldeeb on 22/05/2023.
//

import Foundation

class WebService{
    
    static var shared = WebService()
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()){
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data{
                let mainArticle = try? JSONDecoder().decode(MainArticle.self, from: data)
                if let mainArticle = mainArticle{
                    completion(mainArticle.articles)
//                    print(mainArticle.articles[0])
                }
            }
        }.resume()
    }
}
