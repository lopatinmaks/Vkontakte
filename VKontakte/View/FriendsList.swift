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
    @IBOutlet private var avatarImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        avatarImageView.layer.cornerRadius = 36
    }
    
    func setup(list: Friends) {
        nameLabel.text = list.name
        avatarImageView.image = UIImage(named: list.avatar)
    }
}
