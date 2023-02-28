//
//  GlobalSearchCellTableViewCell.swift
//  VKontakte
//
//  Created by Ольга on 27.01.2023.
//

import UIKit

final class GlobalSearchCellTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var photo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        photo.layer.cornerRadius = 36
    }
}
