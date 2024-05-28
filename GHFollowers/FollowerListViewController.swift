//
//  FollowerListViewController.swift
//  GHFollowers
//
//  Created by Daniel Silva on 28/05/2024.
//

import UIKit

class FollowerListViewController: UIViewController {
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
