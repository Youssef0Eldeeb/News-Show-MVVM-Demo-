//
//  GoodNewsTableViewController.swift
//  News Show (MVVM Demo)
//
//  Created by Youssef Eldeeb on 21/05/2023.
//

import Foundation
import UIKit

class GoodNewsTableViewController: UITableViewController{
    
    private var articleListVM: ArticleListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        getData()
    }
    private func setup(){
        title = "Good News"
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.backgroundColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    private func getData(){
        let url = URL(string: "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=0d9eff2ac1a94cfb94163017ea7a5d87")
        WebService.shared.getArticles(url: url!) { articles in
            if let articles = articles{
                self.articleListVM = ArticleListViewModel(articles: articles)
            }
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
}

extension GoodNewsTableViewController{
    override func numberOfSections(in tableView: UITableView) -> Int {
        return articleListVM == nil ? 0 : articleListVM!.numberOfSection
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articleListVM.numberOfRowInSection(section)
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? ArticaleTableViewCell else{fatalError("cell not found")}
        let articleVM = articleListVM.articleInIndex(indexPath.row)
        
        cell.titleLabel.text = articleVM.title
        cell.descriptionLabel.text = articleVM.description
        
        return cell
    }
}
