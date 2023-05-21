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
    }
    private func setup(){
        title = "Good News"
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.backgroundColor = .darkGray
//        UINavigationBar.appearance().barTintColor = UIColor.darkGray
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
}
