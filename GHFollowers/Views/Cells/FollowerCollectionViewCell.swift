//
//  FollowerCollectionViewCell.swift
//  GHFollowers
//
//  Created by Daniel Silva on 14/07/2024.
//

import UIKit

class FollowerCollectionViewCell: UICollectionViewCell {
    static let reuseID = "FollowerCollectionViewCell"
    let avatarImage = GHFAvatarImageView(frame: .zero)
    let usernameLabel = GHFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureAvatarImage()
        configureUsernameLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        usernameLabel.text = follower.login
    }
    
    private func configureAvatarImage() {
        addSubview(avatarImage)
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            avatarImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            avatarImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            avatarImage.heightAnchor.constraint(equalTo: avatarImage.widthAnchor),
        ])
    }
    
    private func configureUsernameLabel() {
        addSubview(usernameLabel)
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            usernameLabel.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: padding + 4),
            usernameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
