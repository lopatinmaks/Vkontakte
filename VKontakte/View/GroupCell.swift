//
//  GroupCell.swift
//  VKontakte
//
//  Created by Ольга on 27.01.2023.
//

import UIKit

final class GroupCell: UITableViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet private var nameGroupLabel: UILabel!
    @IBOutlet private var avatarGroupImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        avatarGroupImageView.layer.cornerRadius = 36
    }
    
    func setup(groups: MyGroups) {
        nameGroupLabel.text = groups.nameOfGroup
        avatarGroupImageView.image = UIImage(named: groups.avatarGroup)
    }
}
