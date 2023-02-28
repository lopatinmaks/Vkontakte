//
//  GroupCell.swift
//  VKontakte
//
//  Created by Ольга on 27.01.2023.
//

import UIKit

final class GroupCell: UITableViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var nameGroupLabel: UILabel!
    @IBOutlet weak var avatarGroupImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        avatarGroupImageView.layer.cornerRadius = 36
    }
}
