//
//  GoodNewsTableViewController.swift
//  News Show (MVVM Demo)
//
//  Created by Youssef Eldeeb on 21/05/2023.
//

import Foundation
import UIKit

class GoodNewsTableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        WebService.shared.getArticles(url: URL(string: "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=0d9eff2ac1a94cfb94163017ea7a5d87")!) { article in
            print(article)
        }
    }
    private func setup(){
        title = "Good News"
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
//        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.backgroundColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
}
