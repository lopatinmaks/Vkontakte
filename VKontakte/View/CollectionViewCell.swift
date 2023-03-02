//
//  CollectionViewCell.swift
//  VKontakte
//
//  Created by Ольга on 27.01.2023.
//

import UIKit

final class CollectionViewCell: UICollectionViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet private var photoImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel! 
      
    //MARK: - Propertys
    
    var name: String?
    var avatar: String?
    
    func setup(name: String, avatar: String) {
        nameLabel.text = name
        photoImageView.image = UIImage(named: avatar )
    }
}
