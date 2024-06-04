//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Daniel Silva on 04/06/2024.
//

import UIKit

extension UIViewController {
        
        func presentGHFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
            DispatchQueue.main.async {
                let alertViewController = GHFAlertViewController(alertTitle: title, message: message, buttonTitle: buttonTitle)
                alertViewController.modalPresentationStyle = .overFullScreen
                alertViewController.modalTransitionStyle = .crossDissolve
                self.present(alertViewController, animated: true)
            }
        }
}
