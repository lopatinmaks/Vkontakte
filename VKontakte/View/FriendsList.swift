//
//  FriendsList.swift
//  VKontakte
//
//  Created by Ольга on 27.01.2023.
//

import UIKit

final class FriendsList: UITableViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        avatarImageView.layer.cornerRadius = 36
    }
}
