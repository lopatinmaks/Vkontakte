//
//  FriendsList.swift
//  VKontakte
//
//  Created by Ольга on 27.01.2023.
//

import UIKit

final class FriendsList: UITableViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var containerView: UIView!
    @IBOutlet private var avatarImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        avatarImageView.layer.cornerRadius = 36
        containerView.layer.cornerRadius = 36
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowRadius = 10
        containerView.layer.shadowOffset = .zero
        containerView.layer.shadowOpacity = 0.5
    }
    
    func configure(list: Friends) {
        nameLabel.text = list.name
        avatarImageView.image = UIImage(named: list.avatar)
    }
}
