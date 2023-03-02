//
//  GlobalSearchCellTableViewCell.swift
//  VKontakte
//
//  Created by Ольга on 27.01.2023.
//

import UIKit

final class GlobalSearchCellTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet private var name: UILabel!
    @IBOutlet private var photo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        photo.layer.cornerRadius = 36
    }
    
    func configure(global: MyGroups) {
        name.text = global.nameOfGroup
        photo.image = UIImage(named: global.avatarGroup)
    }
}
